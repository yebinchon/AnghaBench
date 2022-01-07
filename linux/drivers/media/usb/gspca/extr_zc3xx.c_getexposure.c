
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;




 int i2c_read (struct gspca_dev*,int) ;

__attribute__((used)) static s32 getexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->sensor) {
 case 129:
  return (i2c_read(gspca_dev, 0x25) << 9)
   | (i2c_read(gspca_dev, 0x26) << 1)
   | (i2c_read(gspca_dev, 0x27) >> 7);
 case 128:
  return i2c_read(gspca_dev, 0x10);
 default:
  return -1;
 }
}
