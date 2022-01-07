
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setilluminators(struct gspca_dev *gspca_dev, bool top, bool bottom)
{

 gspca_dev->usb_buf[0] = 0x22;
 if (top)
  gspca_dev->usb_buf[1] = 0x76;
 else if (bottom)
  gspca_dev->usb_buf[1] = 0x7a;
 else
  gspca_dev->usb_buf[1] = 0x7e;
 reg_w(gspca_dev, 2);
}
