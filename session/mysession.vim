let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/qnpu/pt/src/pytorch-integration
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1476 tests/pytest_working/compile/dynamic/test_hpu_ops.py
badd +127 tests/pytest_working/compile/dynamic/test_hpu_slice_scatter_dynamic.py
badd +13 tests/pytest_working/compile/dynamic/test_hpu_select_scatter_dynamic.py
badd +2719 backend/kernel/hpu_habana_launch_op_pt.cpp
badd +491 backend/helpers/create_tensor.cpp
badd +300 scripts/tests/files/ops_generation_e2e/RegistrationDeclarations.h
badd +571 habana_eager/graph_exec.cpp
badd +413 hpu_ops/backend/convolution_backward_gen.cpp
badd +276 hpu_ops/backend/convolution_gen.cpp
badd +79 hpu_ops/backend/sort_gen.cpp
badd +7260 scripts/hpu_op.yaml
badd +53 hpu_ops/backend/topk_gen.cpp
badd +187 hpu_ops/backend/op_backend.cpp
badd +864 habana_kernels/basic_kernels.cpp
badd +62 hpu_ops/backend/full_gen.cpp
badd +0 tests/pytest_working/any_mode/test_hpu_masked_scatter.py
badd +33 hpu_ops/backend/repeat_gen.cpp
badd +69 habana_kernels/repeat.h
badd +152 habana_kernels/repeat.cpp
badd +25 tests/pytest_working/any_mode/test_hpu_repeat.py
badd +1 tests/pytest_working/any_mode/test_hpu_repeat_interleave.py
badd +546 habana_kernels/tensor_shape_kernels.cpp
badd +28 habana_kernels/basic_kernels.h
badd +424 backend/habana_operator.cpp
badd +454 backend/habana_operator.h
badd +19 hpu_ops/backend/addr_gen.cpp
badd +33 tests/pytest_working/any_mode/test_hpu_addr.py
badd +33 tests/pytest_working/compile/test_hpu_addr_compile.py
badd +12 python_packages/habana_frameworks/torch/hpex/normalization/FusedClipNorm.py
badd +16 common/python_cpp_traceback.h
badd +77 habana_kernels/tensor_shape_kernels.h
badd +316 tests/pytest_working/any_mode/test_hpu_fp8_ops_any_mode.py
badd +188 hpu_ops/backend/fused_clip_norm_gen.cpp
badd +406 habana_eager/graph_dynamic_ops.cpp
badd +53 habana_eager/eager_custom_op_register.cpp
badd +28 hpu_ops/backend/cast_to_fp8_hybrid_gen.cpp
badd +49 backend/synapse_helpers/graph.cpp
badd +3 ~/qnpu/pt/src/synapse_profiler/shim_plugins/topology_debugger/tdcompare.py
badd +0 ~/qnpu/pt/src/optimum-habana-fork/setup.py
badd +238 habana_kernels/random_gen_kernels.cpp
badd +47 habana_eager/ops/as_strided.cpp
badd +161 hpu_ops/backend/constant_pad_gen.cpp
argglobal
%argdel
$argadd habana_kernels/basic_kernels.cpp
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit backend/kernel/hpu_habana_launch_op_pt.cpp
argglobal
balt tests/pytest_working/any_mode/test_hpu_fp8_ops_any_mode.py
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2719 - ((15 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2719
normal! 0
tabnext
edit hpu_ops/backend/fused_clip_norm_gen.cpp
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
argglobal
balt hpu_ops/backend/cast_to_fp8_hybrid_gen.cpp
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 188 - ((36 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 188
normal! 044|
wincmd w
argglobal
if bufexists(fnamemodify("python_packages/habana_frameworks/torch/hpex/normalization/FusedClipNorm.py", ":p")) | buffer python_packages/habana_frameworks/torch/hpex/normalization/FusedClipNorm.py | else | edit python_packages/habana_frameworks/torch/hpex/normalization/FusedClipNorm.py | endif
if &buftype ==# 'terminal'
  silent file python_packages/habana_frameworks/torch/hpex/normalization/FusedClipNorm.py
endif
balt hpu_ops/backend/fused_clip_norm_gen.cpp
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 12 - ((11 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 024|
wincmd w
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
tabnext
edit habana_kernels/basic_kernels.cpp
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
argglobal
balt hpu_ops/backend/op_backend.cpp
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1594 - ((37 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1594
normal! 050|
lcd ~/qnpu/pt/src/pytorch-integration
wincmd w
argglobal
if bufexists(fnamemodify("~/qnpu/pt/src/pytorch-integration/scripts/hpu_op.yaml", ":p")) | buffer ~/qnpu/pt/src/pytorch-integration/scripts/hpu_op.yaml | else | edit ~/qnpu/pt/src/pytorch-integration/scripts/hpu_op.yaml | endif
if &buftype ==# 'terminal'
  silent file ~/qnpu/pt/src/pytorch-integration/scripts/hpu_op.yaml
endif
balt ~/qnpu/pt/src/pytorch-integration/hpu_ops/backend/constant_pad_gen.cpp
setlocal fdm=manual
setlocal fde=
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7260 - ((16 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7260
normal! 0
lcd ~/qnpu/pt/src/pytorch-integration
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
