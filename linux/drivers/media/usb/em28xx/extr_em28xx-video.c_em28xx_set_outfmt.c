
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct em28xx_v4l2 {int vinmode; int vinctl; int vbi_width; int vbi_height; int norm; TYPE_1__* format; } ;
struct em28xx {int is_em25xx; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int reg; } ;


 int EM28XX_R10_VINMODE ;
 int EM28XX_R11_VINCTRL ;
 int EM28XX_R27_OUTFMT ;
 int EM28XX_R34_VBI_START_H ;
 int EM28XX_R35_VBI_START_V ;
 int EM28XX_R36_VBI_WIDTH ;
 int EM28XX_R37_VBI_HEIGHT ;
 int EM28XX_VINCTRL_VBI_RAW ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int em28xx_vbi_supported (struct em28xx*) ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;

__attribute__((used)) static int em28xx_set_outfmt(struct em28xx *dev)
{
 int ret;
 u8 fmt, vinctrl;
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 fmt = v4l2->format->reg;
 if (!dev->is_em25xx)
  fmt |= 0x20;
 ret = em28xx_write_reg(dev, EM28XX_R27_OUTFMT, fmt);
 if (ret < 0)
  return ret;

 ret = em28xx_write_reg(dev, EM28XX_R10_VINMODE, v4l2->vinmode);
 if (ret < 0)
  return ret;

 vinctrl = v4l2->vinctl;
 if (em28xx_vbi_supported(dev) == 1) {
  vinctrl |= EM28XX_VINCTRL_VBI_RAW;
  em28xx_write_reg(dev, EM28XX_R34_VBI_START_H, 0x00);
  em28xx_write_reg(dev, EM28XX_R36_VBI_WIDTH,
     v4l2->vbi_width / 4);
  em28xx_write_reg(dev, EM28XX_R37_VBI_HEIGHT, v4l2->vbi_height);
  if (v4l2->norm & V4L2_STD_525_60) {

   em28xx_write_reg(dev, EM28XX_R35_VBI_START_V, 0x09);
  } else if (v4l2->norm & V4L2_STD_625_50) {

   em28xx_write_reg(dev, EM28XX_R35_VBI_START_V, 0x07);
  }
 }

 return em28xx_write_reg(dev, EM28XX_R11_VINCTRL, vinctrl);
}
