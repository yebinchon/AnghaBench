
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef size_t s32 ;


 scalar_t__ SENSOR_OV7660 ;



 int usb_exchange (struct gspca_dev*,int const**) ;

__attribute__((used)) static void setlightfreq(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const u8 (*ov7660_freq_tb[3])[4] =
  {128, 130, 129};

 if (sd->sensor != SENSOR_OV7660)
  return;
 usb_exchange(gspca_dev, ov7660_freq_tb[val]);
}
