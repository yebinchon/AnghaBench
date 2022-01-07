
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int palette; scalar_t__ vflip; scalar_t__ hflip; } ;
struct stk_camera {TYPE_1__ vsettings; } ;
struct regval {int dummy; } ;


 int COM7_FMT_CIF ;
 int COM7_FMT_QCIF ;
 int COM7_FMT_QVGA ;
 int COM7_FMT_SXGA ;
 int COM7_FMT_VGA ;
 int COM7_PBAYER ;
 int COM7_RGB ;
 int COM7_YUV ;
 int EFAULT ;





 int MVFP_FLIP ;
 int MVFP_MIRROR ;
 int REG_ADVFH ;
 int REG_ADVFL ;
 int REG_COM7 ;
 int REG_MVFP ;
 int REG_TSLB ;





 int msleep (int) ;
 struct regval* ov_fmt_bayer ;
 struct regval* ov_fmt_rgbp ;
 struct regval* ov_fmt_rgbr ;
 struct regval* ov_fmt_uyvy ;
 struct regval* ov_fmt_yuyv ;
 int pr_err (char*,...) ;
 int stk_sensor_outb (struct stk_camera*,int ,unsigned int) ;
 int stk_sensor_set_hw (struct stk_camera*,int,int,int,int) ;
 int stk_sensor_write_regvals (struct stk_camera*,struct regval*) ;

int stk_sensor_configure(struct stk_camera *dev)
{
 int com7;




 unsigned dummylines;
 int flip;
 struct regval *rv;

 switch (dev->vsettings.mode) {
 case 136: com7 = COM7_FMT_QCIF;
  dummylines = 604;
  break;
 case 135: com7 = COM7_FMT_QVGA;
  dummylines = 267;
  break;
 case 137: com7 = COM7_FMT_CIF;
  dummylines = 412;
  break;
 case 133: com7 = COM7_FMT_VGA;
  dummylines = 11;
  break;
 case 134: com7 = COM7_FMT_SXGA;
  dummylines = 0;
  break;
 default:
  pr_err("Unsupported mode %d\n", dev->vsettings.mode);
  return -EFAULT;
 }
 switch (dev->vsettings.palette) {
 case 129:
  com7 |= COM7_YUV;
  rv = ov_fmt_uyvy;
  break;
 case 128:
  com7 |= COM7_YUV;
  rv = ov_fmt_yuyv;
  break;
 case 132:
  com7 |= COM7_RGB;
  rv = ov_fmt_rgbp;
  break;
 case 131:
  com7 |= COM7_RGB;
  rv = ov_fmt_rgbr;
  break;
 case 130:
  com7 |= COM7_PBAYER;
  rv = ov_fmt_bayer;
  break;
 default:
  pr_err("Unsupported colorspace\n");
  return -EFAULT;
 }


 stk_sensor_outb(dev, REG_COM7, com7);
 msleep(50);
 stk_sensor_write_regvals(dev, rv);
 flip = (dev->vsettings.vflip?MVFP_FLIP:0)
  | (dev->vsettings.hflip?MVFP_MIRROR:0);
 stk_sensor_outb(dev, REG_MVFP, flip);
 if (dev->vsettings.palette == 130
   && !dev->vsettings.vflip)
  stk_sensor_outb(dev, REG_TSLB, 0x08);
 stk_sensor_outb(dev, REG_ADVFH, dummylines >> 8);
 stk_sensor_outb(dev, REG_ADVFL, dummylines & 0xff);
 msleep(50);
 switch (dev->vsettings.mode) {
 case 133:
  if (stk_sensor_set_hw(dev, 302, 1582, 6, 486))
   pr_err("stk_sensor_set_hw failed (VGA)\n");
  break;
 case 134:
 case 137:
 case 135:
 case 136:




  break;
 }
 msleep(10);
 return 0;
}
