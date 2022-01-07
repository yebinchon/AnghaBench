
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ SENSOR_OV767x ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV767x) {


  sccb_reg_write(gspca_dev, 0x10, val);
 } else {







  sccb_reg_write(gspca_dev, 0x08, val >> 7);
  sccb_reg_write(gspca_dev, 0x10, val << 1);
 }
}
