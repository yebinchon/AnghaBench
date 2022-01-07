
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {int flags; scalar_t__ bridge; int image_offset; int sensor; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int* usb_buf; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {scalar_t__ pixelformat; int priv; } ;


 scalar_t__ BRIDGE_VC0321 ;
 int FL_SAMSUNG ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int * hv7131r_gamma ;
 int ** hv7131r_initQVGA_data ;
 int ** hv7131r_initVGA_data ;
 int * hv7131r_matrix ;
 int ** mi0360_initQVGA_JPG ;
 int ** mi0360_initVGA_JPG ;
 int * mi0360_matrix ;
 int ** mi1310_soc_InitSXGA_JPG ;
 int ** mi1310_socinitQVGA_JPG ;
 int ** mi1310_socinitVGA_JPG ;
 int * mi1320_gamma ;
 int ** mi1320_initQVGA_data ;
 int ** mi1320_initVGA_data ;
 int * mi1320_matrix ;



 int msleep (int) ;
 int * ov7660_gamma ;
 int ** ov7660_initQVGA_data ;
 int ** ov7660_initVGA_data ;
 int * ov7660_matrix ;
 int ** ov7670_InitQVGA ;
 int ** ov7670_InitVGA ;
 int * po1200_gamma ;
 int ** po1200_initVGA_data ;
 int * po1200_matrix ;
 int * po3130_gamma ;
 int ** po3130_initQVGA_data ;
 int ** po3130_initVGA_data ;
 int * po3130_matrix ;
 int ** po3130_rundata ;
 int ** poxxxx_initQVGA ;
 int ** poxxxx_initVGA ;
 int const** poxxxx_init_common ;
 int ** poxxxx_init_end_1 ;
 int const** poxxxx_init_end_2 ;
 int const** poxxxx_init_start_3 ;
 int put_tab_to_reg (struct gspca_dev*,int const*,int,int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int setgamma (struct gspca_dev*) ;
 int setwb (struct gspca_dev*) ;
 int usb_exchange (struct gspca_dev*,int const**) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 const u8 (*init)[4];
 const u8 *GammaT = ((void*)0);
 const u8 *MatrixT = ((void*)0);
 int mode;
 static const u8 (*mi1320_soc_init[])[4] = {
  129,
  128,
  130,
 };


 if (sd->flags & FL_SAMSUNG) {
  reg_w(gspca_dev, 0x89, 0xf0ff, 0xffff);
  reg_w(gspca_dev, 0xa9, 0x8348, 0x000e);
  reg_w(gspca_dev, 0xa9, 0x0000, 0x001a);
 }


 if (sd->bridge == BRIDGE_VC0321) {
  reg_w(gspca_dev, 0xa0, 0xff, 0xbfec);
  reg_w(gspca_dev, 0xa0, 0xff, 0xbfed);
  reg_w(gspca_dev, 0xa0, 0xff, 0xbfee);
  reg_w(gspca_dev, 0xa0, 0xff, 0xbfef);
  sd->image_offset = 46;
 } else {
  if (gspca_dev->cam.cam_mode[gspca_dev->curr_mode].pixelformat
    == V4L2_PIX_FMT_JPEG)
   sd->image_offset = 0;
  else
   sd->image_offset = 32;
 }

 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 switch (sd->sensor) {
 case 140:
  GammaT = hv7131r_gamma;
  MatrixT = hv7131r_matrix;
  if (mode)
   init = hv7131r_initQVGA_data;
  else
   init = hv7131r_initVGA_data;
  break;
 case 135:
  GammaT = ov7660_gamma;
  MatrixT = ov7660_matrix;
  if (mode)
   init = ov7660_initQVGA_data;
  else
   init = ov7660_initVGA_data;
  break;
 case 139:
  GammaT = mi1320_gamma;
  MatrixT = mi0360_matrix;
  if (mode)
   init = mi0360_initQVGA_JPG;
  else
   init = mi0360_initVGA_JPG;
  break;
 case 138:
  GammaT = mi1320_gamma;
  MatrixT = mi1320_matrix;
  switch (mode) {
  case 1:
   init = mi1310_socinitQVGA_JPG;
   break;
  case 0:
   init = mi1310_socinitVGA_JPG;
   break;
  default:
   init = mi1310_soc_InitSXGA_JPG;
   break;
  }
  break;
 case 137:
  GammaT = mi1320_gamma;
  MatrixT = mi1320_matrix;
  if (mode)
   init = mi1320_initQVGA_data;
  else
   init = mi1320_initVGA_data;
  break;
 case 136:
  GammaT = mi1320_gamma;
  MatrixT = mi1320_matrix;
  init = mi1320_soc_init[mode];
  break;
 case 134:
  init = mode == 1 ? ov7670_InitVGA : ov7670_InitQVGA;
  break;
 case 132:
  GammaT = po3130_gamma;
  MatrixT = po3130_matrix;
  if (mode)
   init = po3130_initQVGA_data;
  else
   init = po3130_initVGA_data;
  usb_exchange(gspca_dev, init);
  init = po3130_rundata;
  break;
 case 133:
  GammaT = po1200_gamma;
  MatrixT = po1200_matrix;
  init = po1200_initVGA_data;
  break;
 default:

  usb_exchange(gspca_dev, poxxxx_init_common);
  setgamma(gspca_dev);
  usb_exchange(gspca_dev, poxxxx_init_start_3);
  if (mode)
   init = poxxxx_initQVGA;
  else
   init = poxxxx_initVGA;
  usb_exchange(gspca_dev, init);
  reg_r(gspca_dev, 0x8c, 0x0000, 3);
  reg_w(gspca_dev, 0xa0,
    gspca_dev->usb_buf[2] & 1 ? 0 : 1,
    0xb35c);
  msleep(300);

  init = poxxxx_init_end_1;
  break;
 }
 usb_exchange(gspca_dev, init);
 if (GammaT && MatrixT) {
  put_tab_to_reg(gspca_dev, GammaT, 17, 0xb84a);
  put_tab_to_reg(gspca_dev, GammaT, 17, 0xb85b);
  put_tab_to_reg(gspca_dev, GammaT, 17, 0xb86c);
  put_tab_to_reg(gspca_dev, MatrixT, 9, 0xb82c);

  switch (sd->sensor) {
  case 133:
  case 140:
   reg_w(gspca_dev, 0x89, 0x0400, 0x1415);
   break;
  case 138:
   reg_w(gspca_dev, 0x89, 0x058c, 0x0000);
   break;
  }
  msleep(100);
 }
 switch (sd->sensor) {
 case 134:
  reg_w(gspca_dev, 0x87, 0xffff, 0xffff);
  reg_w(gspca_dev, 0x88, 0xff00, 0xf0f1);
  reg_w(gspca_dev, 0xa0, 0x0000, 0xbfff);
  break;
 case 131:
  usb_exchange(gspca_dev, poxxxx_init_end_2);
  setwb(gspca_dev);
  msleep(80);
  reg_w(gspca_dev, 0x89, 0xffff, 0xfdff);
  break;
 }
 return gspca_dev->usb_err;
}
