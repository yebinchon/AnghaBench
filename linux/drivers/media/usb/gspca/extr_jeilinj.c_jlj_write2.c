
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int memcpy (int *,unsigned char*,int) ;
 int pr_err (char*,int ,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int *,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static void jlj_write2(struct gspca_dev *gspca_dev, unsigned char *command)
{
 int retval;

 if (gspca_dev->usb_err < 0)
  return;
 memcpy(gspca_dev->usb_buf, command, 2);
 retval = usb_bulk_msg(gspca_dev->dev,
   usb_sndbulkpipe(gspca_dev->dev, 3),
   gspca_dev->usb_buf, 2, ((void*)0), 500);
 if (retval < 0) {
  pr_err("command write [%02x] error %d\n",
         gspca_dev->usb_buf[0], retval);
  gspca_dev->usb_err = retval;
 }
}
