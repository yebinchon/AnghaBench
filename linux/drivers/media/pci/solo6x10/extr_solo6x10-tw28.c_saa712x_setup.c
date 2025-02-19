
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {scalar_t__ video_type; } ;
typedef int saa7128_regs_pal ;
typedef int saa7128_regs_ntsc ;





 scalar_t__ SOLO_VO_FMT_TYPE_PAL ;
 int saa712x_write_regs (struct solo_dev*,int const*,int const,int) ;

__attribute__((used)) static void saa712x_setup(struct solo_dev *dev)
{
 const int reg_start = 0x26;
 static const u8 saa7128_regs_ntsc[] = {

  0x0d, 0x00,

  0x59, 0x1d, 0x75, 0x3f, 0x06, 0x3f,

  0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

  0x1a, 0x1a, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00,

  0x00, 0x00, 0x00, 0x68, 0x10, 0x97, 0x4c, 0x18,
  0x9b, 0x93, 0x9f, 0xff, 0x7c, 0x34, 0x3f, 0x3f,

  0x3f, 0x83, 0x83, 0x80, 0x0d, 0x0f, 0xc3, 0x06,
  0x02, 0x80, 0x71, 0x77, 0xa7, 0x67, 0x66, 0x2e,

  0x7b, 0x11, 0x4f, 0x1f, 0x7c, 0xf0, 0x21, 0x77,
  0x41, 0x88, 0x41, 0x52, 0xed, 0x10, 0x10, 0x00,

  0x41, 0xc3, 0x00, 0x3e, 0xb8, 0x02, 0x00, 0x00,
  0x00, 0x00, 130, 129 & 0xff,
  128, 0x00, 0xff, 0xff,
 }, saa7128_regs_pal[] = {

  0x0d, 0x00,

  0xe1, 0x1d, 0x75, 0x3f, 0x06, 0x3f,

  0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

  0x1a, 0x1a, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00,

  0x00, 0x00, 0x00, 0x68, 0x10, 0x97, 0x4c, 0x18,
  0x9b, 0x93, 0x9f, 0xff, 0x7c, 0x34, 0x3f, 0x3f,

  0x3f, 0x83, 0x83, 0x80, 0x0d, 0x0f, 0xc3, 0x06,
  0x02, 0x80, 0x0f, 0x77, 0xa7, 0x67, 0x66, 0x2e,

  0x7b, 0x02, 0x35, 0xcb, 0x8a, 0x09, 0x2a, 0x77,
  0x41, 0x88, 0x41, 0x52, 0xf1, 0x10, 0x20, 0x00,

  0x41, 0xc3, 0x00, 0x3e, 0xb8, 0x02, 0x00, 0x00,
  0x00, 0x00, 0x12, 0x30,
  128 | 0x40, 0x00, 0xff, 0xff,
 };

 if (dev->video_type == SOLO_VO_FMT_TYPE_PAL)
  saa712x_write_regs(dev, saa7128_regs_pal, reg_start,
    sizeof(saa7128_regs_pal));
 else
  saa712x_write_regs(dev, saa7128_regs_ntsc, reg_start,
    sizeof(saa7128_regs_ntsc));
}
