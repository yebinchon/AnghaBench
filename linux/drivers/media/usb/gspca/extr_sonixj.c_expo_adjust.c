
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;


 int D_FRAM ;







 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int i2c_w1 (struct gspca_dev*,int,int) ;
 int i2c_w8 (struct gspca_dev*,int const*) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static u32 expo_adjust(struct gspca_dev *gspca_dev,
   u32 expo)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 134: {
  int a, b;


  a = 19 + expo * 25 / 256;
  i2c_w1(gspca_dev, 0x68, a);
  a -= 12;
  b = a * a * 4;
  i2c_w1(gspca_dev, 0x03, b >> 8);
  i2c_w1(gspca_dev, 0x04, b);
  break;
     }
 case 133: {
  u8 Expodoit[] =
   { 0xc1, 0x11, 0x25, 0x00, 0x00, 0x00, 0x00, 0x16 };

  Expodoit[3] = expo >> 16;
  Expodoit[4] = expo >> 8;
  Expodoit[5] = expo;
  i2c_w8(gspca_dev, Expodoit);
  break;
     }
 case 132:
 case 131: {
  u8 expoMi[] =
   { 0xb1, 0x5d, 0x09, 0x00, 0x00, 0x00, 0x00, 0x16 };
  static const u8 doit[] =
   { 0xb1, 0x5d, 0x07, 0x00, 0x03, 0x00, 0x00, 0x10 };
  static const u8 sensorgo[] =
   { 0xb1, 0x5d, 0x07, 0x00, 0x02, 0x00, 0x00, 0x10 };

  if (expo > 0x0635)
   expo = 0x0635;
  else if (expo < 0x0001)
   expo = 0x0001;
  expoMi[3] = expo >> 8;
  expoMi[4] = expo;
  i2c_w8(gspca_dev, expoMi);
  i2c_w8(gspca_dev, doit);
  i2c_w8(gspca_dev, sensorgo);
  break;
     }
 case 130: {
  u8 expoMof[] =
   { 0xa1, 0x21, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x10 };
  u8 expoMo10[] =
   { 0xa1, 0x21, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10 };
  static const u8 gainMo[] =
   { 0xa1, 0x21, 0x00, 0x10, 0x00, 0x00, 0x00, 0x1d };

  if (expo > 0x1fff)
   expo = 0x1fff;
  else if (expo < 0x0001)
   expo = 0x0001;
  expoMof[3] = (expo & 0x03fc) >> 2;
  i2c_w8(gspca_dev, expoMof);
  expoMo10[3] = ((expo & 0x1c00) >> 10)
    | ((expo & 0x0003) << 4);
  i2c_w8(gspca_dev, expoMo10);
  i2c_w8(gspca_dev, gainMo);
  gspca_dbg(gspca_dev, D_FRAM, "set exposure %d\n",
     ((expoMo10[3] & 0x07) << 10)
     | (expoMof[3] << 2)
     | ((expoMo10[3] & 0x30) >> 4));
  break;
     }
 case 129: {
  u8 expo_c1[] =
   { 0xb1, 0x5c, 0x09, 0x00, 0x00, 0x00, 0x00, 0x10 };

  if (expo > 0x0390)
   expo = 0x0390;
  else if (expo < 0x0060)
   expo = 0x0060;
  expo_c1[3] = expo >> 8;
  expo_c1[4] = expo;
  i2c_w8(gspca_dev, expo_c1);
  break;
     }
 case 128: {
  u8 gainOm[] =
   { 0xa0, 0x34, 0xe5, 0x00, 0x00, 0x00, 0x00, 0x10 };


  if (expo > 0x03ff)
   expo = 0x03ff;
  if (expo < 0x0001)
   expo = 0x0001;
  gainOm[3] = expo >> 2;
  i2c_w8(gspca_dev, gainOm);
  reg_w1(gspca_dev, 0x96, expo >> 5);
  gspca_dbg(gspca_dev, D_FRAM, "set exposure %d\n", gainOm[3]);
  break;
     }
 }
 return expo;
}
