
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ SENSOR_OV772x ;
 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setawb(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (val) {
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) | 0x02);
  if (sd->sensor == SENSOR_OV772x)
   sccb_reg_write(gspca_dev, 0x63,
    sccb_reg_read(gspca_dev, 0x63) | 0xc0);
 } else {
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) & ~0x02);
  if (sd->sensor == SENSOR_OV772x)
   sccb_reg_write(gspca_dev, 0x63,
    sccb_reg_read(gspca_dev, 0x63) & ~0xc0);
 }
}
