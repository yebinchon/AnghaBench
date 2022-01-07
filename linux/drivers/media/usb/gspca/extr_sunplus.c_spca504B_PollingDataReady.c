
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int ,int) ;

__attribute__((used)) static void spca504B_PollingDataReady(struct gspca_dev *gspca_dev)
{
 int count = 10;

 while (--count > 0) {
  reg_r(gspca_dev, 0x21, 0, 1);
  if ((gspca_dev->usb_buf[0] & 0x01) == 0)
   break;
  msleep(10);
 }
}
