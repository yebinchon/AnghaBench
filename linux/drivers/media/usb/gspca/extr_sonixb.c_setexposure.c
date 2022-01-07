
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sd {int sensor; int reg11; } ;
struct TYPE_5__ {int width; } ;
struct gspca_dev {TYPE_3__* exposure; int usb_err; TYPE_2__* autogain; TYPE_1__ pixfmt; } ;
typedef int __u8 ;
struct TYPE_8__ {int sensor_addr; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
 int i2c_w (struct gspca_dev*,int const*) ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 TYPE_4__* sensor_data ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 134: {


  __u8 i2c[] = {0xc0, 0x11, 0x25, 0x00, 0x00, 0x00, 0x00, 0x17};
  u16 reg = gspca_dev->exposure->val;

  i2c[3] = reg >> 8;
  i2c[4] = reg & 0xff;
  i2c_w(gspca_dev, i2c);
  break;
 }
 case 129:
 case 128: {



  u8 reg = gspca_dev->exposure->val;

  reg = (reg << 4) | 0x0b;
  reg_w(gspca_dev, 0x19, &reg, 1);
  break;
 }
 case 133:
 case 132: {
  __u8 i2c[] = {0xb0, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10};
  int reg10, reg11, reg10_max;







  if (sd->sensor == 133) {
   reg10_max = 0x4d;
   i2c[4] = 0xc0;
  } else
   reg10_max = 0x41;

  reg11 = (15 * gspca_dev->exposure->val + 999) / 1000;
  if (reg11 < 1)
   reg11 = 1;
  else if (reg11 > 16)
   reg11 = 16;




  if (gspca_dev->pixfmt.width == 640 && reg11 < 4)
   reg11 = 4;




  reg10 = (gspca_dev->exposure->val * 15 * reg10_max)
    / (1000 * reg11);





  if (gspca_dev->autogain->val && reg10 < 10)
   reg10 = 10;
  else if (reg10 > reg10_max)
   reg10 = reg10_max;


  i2c[1] = sensor_data[sd->sensor].sensor_addr;
  i2c[3] = reg10;
  i2c[4] |= reg11 - 1;


  if (sd->reg11 == reg11)
   i2c[0] = 0xa0;

  i2c_w(gspca_dev, i2c);
  if (gspca_dev->usb_err == 0)
   sd->reg11 = reg11;
  break;
 }
 case 130: {
  __u8 i2cpframerate[] =
   {0xb0, 0x40, 0x04, 0x00, 0x00, 0x00, 0x00, 0x16};
  __u8 i2cpexpo[] =
   {0xa0, 0x40, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x16};
  const __u8 i2cpdoit[] =
   {0xa0, 0x40, 0x11, 0x01, 0x00, 0x00, 0x00, 0x16};
  int framerate_ctrl;
  if (gspca_dev->exposure->val < 200) {
   i2cpexpo[3] = 255 - (gspca_dev->exposure->val * 255)
      / 200;
   framerate_ctrl = 500;
  } else {



   framerate_ctrl = (gspca_dev->exposure->val - 200)
       * 1000 / 229 + 500;
  }

  i2cpframerate[3] = framerate_ctrl >> 6;
  i2cpframerate[4] = framerate_ctrl & 0x3f;
  i2c_w(gspca_dev, i2cpframerate);
  i2c_w(gspca_dev, i2cpexpo);
  i2c_w(gspca_dev, i2cpdoit);
  break;
 }
 case 131: {
  __u8 i2cpframerate[] =
   {0xb1, 0x40, 0x03, 0x00, 0x00, 0x00, 0x00, 0x14};
  __u8 i2cpexpo[] =
   {0xa1, 0x40, 0x05, 0x00, 0x00, 0x00, 0x00, 0x14};
  const __u8 i2cpdoit[] =
   {0xa1, 0x40, 0x13, 0x01, 0x00, 0x00, 0x00, 0x14};
  int framerate_ctrl;



  if (gspca_dev->exposure->val < 150) {
   i2cpexpo[3] = 150 - gspca_dev->exposure->val;
   framerate_ctrl = 300;
  } else {



   framerate_ctrl = (gspca_dev->exposure->val - 150)
      * 1000 / 230 + 300;
  }

  i2cpframerate[3] = framerate_ctrl >> 4;
  i2cpframerate[4] = framerate_ctrl & 0x0f;
  i2c_w(gspca_dev, i2cpframerate);
  i2c_w(gspca_dev, i2cpexpo);
  i2c_w(gspca_dev, i2cpdoit);
  break;
 }
 default:
  break;
 }
}
