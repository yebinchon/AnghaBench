
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sd {int flags; int sensor; int vstart; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int FLIP_DETECT ;
 scalar_t__ dmi_check_system (int ) ;
 int flip_dmi_table ;
 int i2c_r1 (struct gspca_dev*,int,int*) ;
 int i2c_r2 (struct gspca_dev*,int,int*) ;
 int i2c_w1 (struct gspca_dev*,int,int) ;
 int i2c_w2 (struct gspca_dev*,int,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void set_hvflip(struct gspca_dev *gspca_dev, s32 hflip, s32 vflip)
{
 u8 value, tslb;
 u16 value2;
 struct sd *sd = (struct sd *) gspca_dev;

 if ((sd->flags & FLIP_DETECT) && dmi_check_system(flip_dmi_table)) {
  hflip = !hflip;
  vflip = !vflip;
 }

 switch (sd->sensor) {
 case 129:
  value = 0x01;
  if (hflip)
   value |= 0x20;
  if (vflip) {
   value |= 0x10;
   sd->vstart = 2;
  } else {
   sd->vstart = 3;
  }
  reg_w1(gspca_dev, 0x1182, sd->vstart);
  i2c_w1(gspca_dev, 0x1e, value);
  break;
 case 128:
  i2c_r1(gspca_dev, 0x1e, &value);
  value &= ~0x30;
  tslb = 0x01;
  if (hflip)
   value |= 0x20;
  if (vflip) {
   value |= 0x10;
   tslb = 0x49;
  }
  i2c_w1(gspca_dev, 0x1e, value);
  i2c_w1(gspca_dev, 0x3a, tslb);
  break;
 case 131:
 case 132:
  i2c_r2(gspca_dev, 0x20, &value2);
  value2 &= ~0xc0a0;
  if (hflip)
   value2 |= 0x8080;
  if (vflip)
   value2 |= 0x4020;
  i2c_w2(gspca_dev, 0x20, value2);
  break;
 case 133:
 case 134:
 case 130:
  i2c_r2(gspca_dev, 0x20, &value2);
  value2 &= ~0x0003;
  if (hflip)
   value2 |= 0x0002;
  if (vflip)
   value2 |= 0x0001;
  i2c_w2(gspca_dev, 0x20, value2);
  break;
 case 135:
  i2c_r1(gspca_dev, 0x01, &value);
  value &= ~0x03;
  if (vflip)
   value |= 0x01;
  if (hflip)
   value |= 0x02;
  i2c_w1(gspca_dev, 0x01, value);
  break;
 }
}
