
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; int usb_err; } ;


 int ETIME ;
 int gspca_err (struct gspca_dev*,char*) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_wb (struct gspca_dev*,int,int,int,int) ;

__attribute__((used)) static void wait_status_1(struct gspca_dev *gspca_dev)
{
 int i;

 i = 10;
 do {
  reg_r(gspca_dev, 0x21, 0x0001, 1);
  msleep(10);
  if (gspca_dev->usb_buf[0] == 1) {
   reg_wb(gspca_dev, 0x21, 0x0000, 0x0001, 0x00);
   reg_r(gspca_dev, 0x21, 0x0001, 1);
   return;
  }
 } while (--i > 0);
 gspca_err(gspca_dev, "wait_status_1 timeout\n");
 gspca_dev->usb_err = -ETIME;
}
