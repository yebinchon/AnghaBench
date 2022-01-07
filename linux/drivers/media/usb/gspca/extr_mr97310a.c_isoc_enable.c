
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int mr_write (struct gspca_dev*,int) ;

__attribute__((used)) static int isoc_enable(struct gspca_dev *gspca_dev)
{
 gspca_dev->usb_buf[0] = 0x00;
 gspca_dev->usb_buf[1] = 0x4d;
 return mr_write(gspca_dev, 2);
}
