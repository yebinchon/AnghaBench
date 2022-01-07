
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int __u16 ;


 int reg_w_buf (struct gspca_dev*,int const,int) ;

__attribute__((used)) static void sensor_mapwrite(struct gspca_dev *gspca_dev,
       const __u16 (*sensormap)[2])
{
 while ((*sensormap)[0]) {
  gspca_dev->usb_buf[0] = (*sensormap)[1];
  gspca_dev->usb_buf[1] = (*sensormap)[1] >> 8;
  reg_w_buf(gspca_dev, (*sensormap)[0], 2);
  sensormap++;
 }
}
