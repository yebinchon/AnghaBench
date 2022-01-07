
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ SENSOR_OV767x ;
 int sccb_reg_read (struct gspca_dev*,int) ;

__attribute__((used)) static s32 getexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV767x) {

  return sccb_reg_read(gspca_dev, 0x10);
 } else {
  u8 hi = sccb_reg_read(gspca_dev, 0x08);
  u8 lo = sccb_reg_read(gspca_dev, 0x10);
  return (hi << 8 | lo) >> 1;
 }
}
