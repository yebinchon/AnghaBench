
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ SENSOR_OV767x ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setlightfreq(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 val = val ? 0x9e : 0x00;
 if (sd->sensor == SENSOR_OV767x) {
  sccb_reg_write(gspca_dev, 0x2a, 0x00);
  if (val)
   val = 0x9d;
 }
 sccb_reg_write(gspca_dev, 0x2b, val);
}
