
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static void scale_line(const u8 *src, u8 *dst, unsigned srcw, unsigned dstw, unsigned twopixsize)
{

 unsigned int_part;
 unsigned fract_part;
 unsigned src_x = 0;
 unsigned error = 0;
 unsigned x;





 srcw /= 2;
 dstw /= 2;
 int_part = srcw / dstw;
 fract_part = srcw % dstw;
 for (x = 0; x < dstw; x++, dst += twopixsize) {
  memcpy(dst, src + src_x * twopixsize, twopixsize);
  src_x += int_part;
  error += fract_part;
  if (error >= dstw) {
   error -= dstw;
   src_x++;
  }
 }
}
