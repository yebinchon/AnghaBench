
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {size_t sensor; TYPE_1__* plfreq; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
struct TYPE_4__ {int sensor_addr; } ;
struct TYPE_3__ {int val; } ;


 size_t SENSOR_OV6650 ;
 size_t SENSOR_OV7630 ;
 int i2c_w (struct gspca_dev*,int*) ;
 TYPE_2__* sensor_data ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV6650 || sd->sensor == SENSOR_OV7630) {




  __u8 i2c[] = {0xa0, 0x00, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x10};
  switch (sd->plfreq->val) {
  default:


   i2c[3] = 0;
   break;
  case 1:
   i2c[3] = (sd->sensor == SENSOR_OV6650)
     ? 0x4f : 0x8a;
   break;
  }
  i2c[1] = sensor_data[sd->sensor].sensor_addr;
  i2c_w(gspca_dev, i2c);
 }
}
