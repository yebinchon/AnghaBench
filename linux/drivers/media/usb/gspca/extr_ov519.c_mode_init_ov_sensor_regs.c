
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sd {int sensor; int frame_rate; int clockdiv; } ;
struct ov_i2c_regvals {int member_0; int member_1; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_3__ pixfmt; TYPE_2__ cam; } ;
struct TYPE_4__ {int priv; } ;


 int ARRAY_SIZE (struct ov_i2c_regvals const*) ;
 int OV7610_REG_COM_C ;
 int OV7670_COM7_FMT_MASK ;
 int OV7670_COM7_FMT_QVGA ;
 int OV7670_COM7_FMT_VGA ;
 int OV7670_COM8_AWB ;
 int OV7670_R03_VREF ;
 int OV7670_R12_COM7 ;
 int OV7670_R13_COM8 ;
 int OV7670_R17_HSTART ;
 int OV7670_R18_HSTOP ;
 int OV7670_R19_VSTART ;
 int OV7670_R1A_VSTOP ;
 int OV7670_R32_HREF ;
 int i2c_r (struct sd*,int) ;
 int i2c_w (struct sd*,int,int) ;
 int i2c_w_mask (struct sd*,int,int,int) ;
 int msleep (int) ;
 int write_i2c_regvals (struct sd*,struct ov_i2c_regvals const*,int ) ;

__attribute__((used)) static void mode_init_ov_sensor_regs(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int qvga, xstart, xend, ystart, yend;
 u8 v;

 qvga = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv & 1;


 switch (sd->sensor) {
 case 142:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);
  i2c_w(sd, 0x24, qvga ? 0x20 : 0x3a);
  i2c_w(sd, 0x25, qvga ? 0x30 : 0x60);
  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);
  i2c_w_mask(sd, 0x67, qvga ? 0xf0 : 0x90, 0xf0);
  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  return;
 case 141: {
  u8 v;





  v = 80;
  if (qvga) {
   if (sd->frame_rate < 25)
    v = 0x81;
  } else {
   if (sd->frame_rate < 10)
    v = 0x81;
  }
  i2c_w(sd, 0x11, v);
  i2c_w(sd, 0x12, qvga ? 0x60 : 0x20);
  return;
     }
 case 140:
  if (qvga) {
   xstart = (1040 - gspca_dev->pixfmt.width) / 2 +
    (0x1f << 4);
   ystart = (776 - gspca_dev->pixfmt.height) / 2;
  } else {
   xstart = (2076 - gspca_dev->pixfmt.width) / 2 +
    (0x10 << 4);
   ystart = (1544 - gspca_dev->pixfmt.height) / 2;
  }
  xend = xstart + gspca_dev->pixfmt.width;
  yend = ystart + gspca_dev->pixfmt.height;


  i2c_w_mask(sd, 0x12, qvga ? 0x40 : 0x00, 0xf0);
  i2c_w_mask(sd, 0x32,
      (((xend >> 1) & 7) << 3) | ((xstart >> 1) & 7),
      0x3f);
  i2c_w_mask(sd, 0x03,
      (((yend >> 1) & 3) << 2) | ((ystart >> 1) & 3),
      0x0f);
  i2c_w(sd, 0x17, xstart >> 4);
  i2c_w(sd, 0x18, xend >> 4);
  i2c_w(sd, 0x19, ystart >> 3);
  i2c_w(sd, 0x1a, yend >> 3);
  return;
 case 129:

  i2c_w_mask(sd, OV7610_REG_COM_C, qvga ? (1 << 5) : 0, 1 << 5);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  i2c_w_mask(sd, 0x2d, 0x00, 0x40);
  i2c_w_mask(sd, 0x28, 0x20, 0x20);
  break;
 case 136:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w(sd, 0x35, qvga ? 0x1e : 0x9e);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 case 135:
 case 134:
 case 130:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);
  i2c_w(sd, 0x24, qvga ? 0x20 : 0x3a);
  i2c_w(sd, 0x25, qvga ? 0x30 : 0x60);
  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);
  i2c_w_mask(sd, 0x67, qvga ? 0xb0 : 0x90, 0xf0);
  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  if (sd->sensor == 130)
   i2c_w(sd, 0x35, qvga ? 0x1e : 0x9e);
  break;
 case 133:
 case 132:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x28, qvga ? 0x00 : 0x20, 0x20);


  i2c_w_mask(sd, 0x2d, qvga ? 0x40 : 0x00, 0x40);

  i2c_w_mask(sd, 0x67, qvga ? 0xf0 : 0x90, 0xf0);

  i2c_w_mask(sd, 0x74, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x04);
  break;
 case 131:



  i2c_w_mask(sd, OV7670_R12_COM7,
    qvga ? OV7670_COM7_FMT_QVGA : OV7670_COM7_FMT_VGA,
    OV7670_COM7_FMT_MASK);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, OV7670_R13_COM8, OV7670_COM8_AWB,
    OV7670_COM8_AWB);
  if (qvga) {

   xstart = 164;
   xend = 28;
   ystart = 14;
   yend = 494;
  } else {
   xstart = 158;
   xend = 14;
   ystart = 10;
   yend = 490;
  }


  i2c_w(sd, OV7670_R17_HSTART, xstart >> 3);
  i2c_w(sd, OV7670_R18_HSTOP, xend >> 3);
  v = i2c_r(sd, OV7670_R32_HREF);
  v = (v & 0xc0) | ((xend & 0x7) << 3) | (xstart & 0x07);
  msleep(10);

  i2c_w(sd, OV7670_R32_HREF, v);

  i2c_w(sd, OV7670_R19_VSTART, ystart >> 2);
  i2c_w(sd, OV7670_R1A_VSTOP, yend >> 2);
  v = i2c_r(sd, OV7670_R03_VREF);
  v = (v & 0xc0) | ((yend & 0x3) << 2) | (ystart & 0x03);
  msleep(10);

  i2c_w(sd, OV7670_R03_VREF, v);
  break;
 case 139:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x13, 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 case 138:
 case 137:
  i2c_w_mask(sd, 0x14, qvga ? 0x20 : 0x00, 0x20);
  i2c_w_mask(sd, 0x12, 0x04, 0x06);
  break;
 case 128: {
  const struct ov_i2c_regvals *vals;
  static const struct ov_i2c_regvals sxga_15[] = {
   {0x11, 0x80}, {0x14, 0x3e}, {0x24, 0x85}, {0x25, 0x75}
  };
  static const struct ov_i2c_regvals sxga_7_5[] = {
   {0x11, 0x81}, {0x14, 0x3e}, {0x24, 0x85}, {0x25, 0x75}
  };
  static const struct ov_i2c_regvals vga_30[] = {
   {0x11, 0x81}, {0x14, 0x7e}, {0x24, 0x70}, {0x25, 0x60}
  };
  static const struct ov_i2c_regvals vga_15[] = {
   {0x11, 0x83}, {0x14, 0x3e}, {0x24, 0x80}, {0x25, 0x70}
  };





  i2c_w_mask(sd, 0x12, qvga ? 0x40 : 0x00, 0x40);
  if (qvga)
   vals = sd->frame_rate < 30 ? vga_15 : vga_30;
  else
   vals = sd->frame_rate < 15 ? sxga_7_5 : sxga_15;
  write_i2c_regvals(sd, vals, ARRAY_SIZE(sxga_15));
  return;
     }
 default:
  return;
 }


 i2c_w(sd, 0x11, sd->clockdiv);
}
