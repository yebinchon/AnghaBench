
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int pr_err (char*,int ,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
   int len)
{
 int alen, ret;

 if (gspca_dev->usb_err < 0)
  return;

 ret = usb_bulk_msg(gspca_dev->dev,
   usb_sndbulkpipe(gspca_dev->dev, 4),
   gspca_dev->usb_buf,
   len,
   &alen,
   500);
 if (ret < 0) {
  pr_err("reg write [%02x] error %d\n",
         gspca_dev->usb_buf[0], ret);
  gspca_dev->usb_err = ret;
 }
}
