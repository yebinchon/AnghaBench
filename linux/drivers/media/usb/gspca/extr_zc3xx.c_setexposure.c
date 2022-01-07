
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;




 int i2c_write (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
  i2c_write(gspca_dev, 0x25, val >> 9, 0x00);
  i2c_write(gspca_dev, 0x26, val >> 1, 0x00);
  i2c_write(gspca_dev, 0x27, val << 7, 0x00);
  break;
 case 128:
  i2c_write(gspca_dev, 0x10, val, 0x00);
  break;
 }
}
