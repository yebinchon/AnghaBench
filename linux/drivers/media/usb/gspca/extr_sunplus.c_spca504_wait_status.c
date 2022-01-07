
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__* usb_buf; } ;


 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void spca504_wait_status(struct gspca_dev *gspca_dev)
{
 int cnt;

 cnt = 256;
 while (--cnt > 0) {

  reg_r(gspca_dev, 0x06, 0x00, 1);
  if (gspca_dev->usb_buf[0] == 0)
   return;
  msleep(10);
 }
}
