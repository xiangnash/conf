source $VIMRUNTIME/mswin.vim
behave mswin
inoremap <C-D> <C-O>dd
inoremap <CR> <CR><left><right>
map o o<left><right>
map O O<left><right>
inoremap <c-]> {<cr>}<c-o>O<left><right>
noremap <F6> =a{
syn on
if has("gui_running")
colo torte
endif
se ru nu
set autoread
au FileType cpp,c,java,php se sw=4 ts=4 cin noswf expandtab smarttab nowrap
au FileType in se nocin
cd $HOME/workspace
filetype plugin indent on
autocmd FileType python setlocal et | setlocal sta | setlocal sw=4
autocmd BufEnter * lcd %:p:h
set gfn=Courier\ 10\ Pitch\ 12
set ww=<,>,[,]
map <c-t> :tabnew<CR>
map <c-w> :close<cr>
map <F9> :call CR()<CR><space>
func CR()
exec "update"
exec "!gnome-terminal --geometry 100x30+300+300 -e \"/home/liulixiang/.run.sh %< %<.in\" "
endfunc
map <F10> :call CRm()<CR><space>
func CRm()
exec "update"
exec "!gnome-terminal --geometry 100x30+300+300 -e \"/home/liulixiang/.run.sh %<\" "
endfunc

map<F4> :call AddComment()<cr>
func AddComment()
    if getline('.')[0] == '/'
        normal ^xx
    else
        normal 0i//
    endif
endfunc

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8
set printoptions=syntax:n,number:y,portrait:n


