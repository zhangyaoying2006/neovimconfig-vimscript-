"  ________      ___    ___ ___    ___ ___  ________   ________     
 "|\_____  \    |\  \  /  /|\  \  /  /|\  \|\   ___  \|\   ____\    
  "\|___/  /|   \ \  \/  / | \  \/  / | \  \ \  \\ \  \ \  \___|    
   "   /  / /    \ \    / / \ \    / / \ \  \ \  \\ \  \ \  \  ___  
    " /  /_/__    \/  /  /   \/  /  /   \ \  \ \  \\ \  \ \  \|\  \ 
    "|\________\__/  / /   __/  / /      \ \__\ \__\\ \__\ \_______\
     "\|_______|\___/ /   |\___/ /        \|__|\|__| \|__|\|_______|
      "        \|___|/    \|___|/                                   
"2021. Config by Zhang Yao Ying                                                                  
                                                                  
                                                                  
call plug#begin('~/AppData/Local/nvim/plugged')
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'

Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

Plug 'xiyaowong/nvim-transparent'

Plug 'jiangmiao/auto-pairs'
call plug#end()

"General settings

 
syntax on
set nocompatible
set hidden
set showtabline=2
set mouse=a
set number
set noswapfile
set nowb
set nobackup

set t_Co=256
set termguicolors



let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode


colorscheme gruvbox

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>



for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
	execute 'source' setting_file
endfor
