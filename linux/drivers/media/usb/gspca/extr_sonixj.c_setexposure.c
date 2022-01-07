
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {TYPE_1__* exposure; } ;
struct TYPE_2__ {int val; } ;


 scalar_t__ SENSOR_PO2030N ;
 int i2c_w8 (struct gspca_dev*,int*) ;
 int msleep (int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PO2030N) {
  u8 rexpo[] =
   {0xa1, 0x6e, 0x1a, 0x00, 0x40, 0x00, 0x00, 0x10};

  rexpo[3] = gspca_dev->exposure->val >> 8;
  i2c_w8(gspca_dev, rexpo);
  msleep(6);
  rexpo[2] = 0x1b;
  rexpo[3] = gspca_dev->exposure->val;
  i2c_w8(gspca_dev, rexpo);
 }
}
