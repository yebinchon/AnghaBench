
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s8 ;
typedef int s32 ;


 scalar_t__ SENSOR_OV562x ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 brightness)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;
 s8 sval;

 if (sd->sensor == SENSOR_OV562x) {
  sval = brightness;
  val = 0x76;
  val += sval;
  sccb_write(gspca_dev, 0x24, val);
  val = 0x6a;
  val += sval;
  sccb_write(gspca_dev, 0x25, val);
  if (sval < -40)
   val = 0x71;
  else if (sval < 20)
   val = 0x94;
  else
   val = 0xe6;
  sccb_write(gspca_dev, 0x26, val);
 } else {
  val = brightness;
  if (val < 8)
   val = 15 - val;
  else
   val = val - 8;
  sccb_write(gspca_dev, 0x55,
    0x0f | (val << 4));
 }
}
