## Copyright (C) 2003 David Bateman <adb014@gmail.com>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; see the file COPYING. If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {Function File} {@var{d} =} dftmtx (@var{n})
## Compute the @var{n}-by-@var{n} Fourier transformation matrix.  This is
## the matrix @var{d} such that the Fourier transform of a column vector of
## length @var{n} is given by @code{dftmtx(@var{n}) * @var{x}} and the
## inverse Fourier transform is given by @code{inv(dftmtx(@var{n})) * @var{x}}.
##
## In general this is less efficient than calling the @code{fft} and
## @code{ifft} functions directly.
## @seealso{fft, ifft}
## @end deftypefn

function d = dftmtx(n)

  if (nargin != 1)
    print_usage;
  elseif (!isscalar(n))
    error ("dftmtx: argument must be scalar");
  endif

  d = fft(eye(n));

endfunction
