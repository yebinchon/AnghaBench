
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sh_vou_pdata {int flags; int bus_fmt; } ;
struct TYPE_2__ {int dev; } ;
struct sh_vou_device {int pix; TYPE_1__ v4l2_dev; struct sh_vou_pdata* pdata; } ;


 int ETIMEDOUT ;
 int SH_VOU_HSYNC_LOW ;
 int SH_VOU_PCLK_FALLING ;
 int SH_VOU_VSYNC_LOW ;
 int VOUCR ;
 int VOUIR ;
 int VOUMSR ;
 int VOURCR ;
 int VOUSRR ;
 int dev_dbg (int ,char*,int) ;
 int sh_vou_ntsc_mode (int ) ;
 int sh_vou_reg_a_read (struct sh_vou_device*,int ) ;
 int sh_vou_reg_a_write (struct sh_vou_device*,int ,int) ;
 int sh_vou_reg_ab_set (struct sh_vou_device*,int ,int,int) ;
 int sh_vou_reg_ab_write (struct sh_vou_device*,int ,int) ;
 int sh_vou_set_fmt_vid_out (struct sh_vou_device*,int *) ;
 int udelay (int) ;

__attribute__((used)) static int sh_vou_hw_init(struct sh_vou_device *vou_dev)
{
 struct sh_vou_pdata *pdata = vou_dev->pdata;
 u32 voucr = sh_vou_ntsc_mode(pdata->bus_fmt) << 29;
 int i = 100;


 sh_vou_reg_a_write(vou_dev, VOUIR, 0);


 sh_vou_reg_a_write(vou_dev, VOUSRR, 0x101);
 while (--i && (sh_vou_reg_a_read(vou_dev, VOUSRR) & 0x101))
  udelay(1);

 if (!i)
  return -ETIMEDOUT;

 dev_dbg(vou_dev->v4l2_dev.dev, "Reset took %dus\n", 100 - i);

 if (pdata->flags & SH_VOU_PCLK_FALLING)
  voucr |= 1 << 28;
 if (pdata->flags & SH_VOU_HSYNC_LOW)
  voucr |= 1 << 27;
 if (pdata->flags & SH_VOU_VSYNC_LOW)
  voucr |= 1 << 26;
 sh_vou_reg_ab_set(vou_dev, VOUCR, voucr, 0xfc000000);


 sh_vou_reg_a_write(vou_dev, VOURCR, 4);

 sh_vou_reg_ab_write(vou_dev, VOUMSR, 0x800000);

 sh_vou_set_fmt_vid_out(vou_dev, &vou_dev->pix);

 return 0;
}
