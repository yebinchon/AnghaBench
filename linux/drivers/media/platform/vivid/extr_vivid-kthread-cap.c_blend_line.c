
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vivid_dev {int dummy; } ;


 int copy_pix (struct vivid_dev*,unsigned int,unsigned int,int *,int const*) ;

__attribute__((used)) static void blend_line(struct vivid_dev *dev, unsigned y_offset, unsigned x_offset,
  u8 *vcapbuf, const u8 *vosdbuf,
  unsigned width, unsigned pixsize)
{
 unsigned x;

 for (x = 0; x < width; x++, vcapbuf += pixsize, vosdbuf += pixsize) {
  copy_pix(dev, y_offset, x_offset + x,
    (u16 *)vcapbuf, (const u16 *)vosdbuf);
 }
}
