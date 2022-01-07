
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; } ;



__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 return gspca_dev->usb_err;
}
