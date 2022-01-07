
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ SENSOR_OV767x ;
 int sccb_reg_write (struct gspca_dev*,int,scalar_t__) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV767x) {
  if (val < 0)
   val = 0x80 - val;
  sccb_reg_write(gspca_dev, 0x55, val);
 } else {
  sccb_reg_write(gspca_dev, 0x9b, val);
 }
}
