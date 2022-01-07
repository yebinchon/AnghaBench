
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int i2c_intf; int i2c_addr; int sensor; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int s32 ;
 int i2c_w (struct gspca_dev*,int*) ;

__attribute__((used)) static void set_exposure(struct gspca_dev *gspca_dev, s32 expo)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 exp[8] = {sd->i2c_intf, sd->i2c_addr,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10};
 int expo2;

 if (gspca_dev->streaming)
  exp[7] = 0x1e;

 switch (sd->sensor) {
 case 131:
 case 130:
 case 128:
 case 129:
  if (expo > 547)
   expo2 = 547;
  else
   expo2 = expo;
  exp[0] |= (2 << 4);
  exp[2] = 0x10;
  exp[3] = expo2 >> 2;
  exp[7] = 0x10;
  i2c_w(gspca_dev, exp);
  exp[2] = 0x04;
  exp[3] = expo2 & 0x0003;
  exp[7] = 0x10;
  i2c_w(gspca_dev, exp);
  expo -= expo2;
  exp[7] = 0x1e;
  exp[0] |= (3 << 4);
  exp[2] = 0x2d;
  exp[3] = expo;
  exp[4] = expo >> 8;
  break;
 case 134:
 case 132:
 case 133:
  exp[0] |= (3 << 4);
  exp[2] = 0x09;
  exp[3] = expo >> 8;
  exp[4] = expo;
  break;
 case 135:
  exp[0] |= (4 << 4);
  exp[2] = 0x25;
  exp[3] = expo >> 5;
  exp[4] = expo << 3;
  exp[5] = 0;
  break;
 default:
  return;
 }
 i2c_w(gspca_dev, exp);
}
