
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int alt; int usb_err; } ;



__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 gspca_dev->alt = 1;

 return gspca_dev->usb_err;
}
