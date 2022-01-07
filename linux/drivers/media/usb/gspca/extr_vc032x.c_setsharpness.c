
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;




 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data;

 switch (sd->sensor) {
 case 129:
  data = 0;
  i2c_write(gspca_dev, 0x03, &data, 1);
  if (val < 0)
   data = 0x6a;
  else
   data = 0xb5 + val * 3;
  i2c_write(gspca_dev, 0x61, &data, 1);
  break;
 case 128:
  if (val < 0)
   data = 0x7e;
  else
   data = 0x60 + val * 0x0f;
  i2c_write(gspca_dev, 0x59, &data, 1);
  break;
 }
}
