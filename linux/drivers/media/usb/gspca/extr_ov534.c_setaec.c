
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
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setaec(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data;

 data = sd->sensor == SENSOR_OV767x ?
   0x05 :
   0x01;
 switch (val) {
 case 129:
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) | data);
  break;
 case 128:
  sccb_reg_write(gspca_dev, 0x13,
    sccb_reg_read(gspca_dev, 0x13) & ~data);
  break;
 }
}
