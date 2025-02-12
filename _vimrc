set number
set nocompatible
syn on
set completeopt=menu,longest,preview
set incsearch
set history=50
set nobackup
set autoindent
set guifont=Courier\ New:h14	" Set current font to "Courier New" with size 14
set hlsearch	" Auto highlight selected words
set autochdir	" automatically follow the directory where you opened the current file
colorscheme desert
let g:netrw_browse_split = 3
set enc=utf-8
set showmatch
set ruler
set foldenable
set foldmethod=indent
set foldlevel=0
set backspace=2
"set tags=$HOME/tags
set tags+=C:/Projects/tags
set tags+=X:/DATA/Engineering_General/STC/NetScripts/tags
"set tags+=X:/DATA/Engineering_General/STC/tags_old
"set scrollbind
set tabstop=4
"set expandtab
set shiftwidth=4

" comment recording for lua
let @c = "I--"
let @u = "0wxx"


" lua comment
noremap \cl I--<Esc>
" script comment
noremap \cs I" <Esc>
" script comment
" noremap \c* I* <Esc>
" python comment
noremap \cp I# <Esc>
" c/c++ comment
noremap \cc I//<Esc>
noremap \cd I<Del><Del><Esc>




call plug#begin('$HOME/vimfiles/modules')
"call plug#begin()

Plug 'scrooloose/nerdcommenter'
"Plug 'preservim/nerdcommenter'
Plug 'junegunn/vim-easy-align'
call plug#end()




"cd $HOME/lua\ for\ FTM
"cd $HOME/working_projects/scripts_merge/
"cd $HOME
"cd X:/DATA/Engineering_General/STC/netscripts/Weihao/
" catag: searching class as well
"au BufWritePost *.lua silent! !ctags -R --language-force=lua . &
"au BufWritePost *.lua silent! !ctags -R --language=lua . &

"" Commenting blocks of code.
"augroup commenting_blocks_of_code
"  autocmd!
"  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"  autocmd FileType conf,fstab       let b:comment_leader = '# '
"  autocmd FileType tex              let b:comment_leader = '% '
"  autocmd FileType mail             let b:comment_leader = '> '
"  autocmd FileType vim              let b:comment_leader = '" '
"  autocmd FileType lua		    let b:comment_leader = '-- '
"augroup END
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"set fenc=utf-8
"set termencoding=utf-8
"" disable vi compatibility (emulation of old bugs)
"set nocompatible
"" use indentation of previous line

"" use intelligent indentation for C
"" configure tabwidth and insert spaces instead of tabs
"set tabstop=4        " tab width is 4 spaces
"set shiftwidth=4     " indent also with 4 spaces
"set expandtab        " expand tabs to spaces
"" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
"set textwidth=120
"" turn syntax highlighting on
"set t_Co=256
"" colorscheme wombat256
"" intelligent comments
"set comments=sl:/*,mb:\ *,elx:\ */
"
"" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
"" This offers intelligent C++ completion when typing �.� �->� or <C-o>
"" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
"
"" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
"let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"
"
"" Enhanced keyboard mappings
""
"" in normal mode F2 will save the file
"nmap <F2> :w<CR>
"" in insert mode F2 will exit insert, save, enters insert again
"imap <F2> <ESC>:w<CR>i
"" switch between header/source with F4
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"" recreate tags file with F5
"map <F5> :!ctags -R �c++-kinds=+p �fields=+iaS �extra=+q .<CR>
"" create doxygen comment
"map <F6> :Dox<CR>
"" build using makeprg with <F7>
"map <F7> :make<CR>
"" build using makeprg with <S-F7>
"map <S-F7> :make clean all<CR>
"" goto definition with F12
"map <F12> <C-]>
"" in diff mode we use the spell check keys for merging
"if &diff
"  � diff settings
"  map <M-Down> ]c
"  map <M-Up> [c
"  map <M-Left> do
"  map <M-Right> dp
"  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
"  " spell settings
"  :setlocal spell spelllang=en
"  " set the spellfile - folders must exist
"  set spellfile=~/.vim/spellfile.add
"  map <M-Down> ]s
"  map <M-Up> [s
"endif
"map <ctrl-j> <Esc>








