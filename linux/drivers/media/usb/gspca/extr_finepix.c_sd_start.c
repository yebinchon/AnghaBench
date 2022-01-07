
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_fpix {int work_struct; } ;
struct gspca_dev {TYPE_1__** urb; int dev; } ;
struct TYPE_2__ {int pipe; int transfer_buffer; } ;


 int FPIX_MAX_TRANSFER ;
 int FPIX_TIMEOUT ;
 int command (struct gspca_dev*,int) ;
 int pr_err (char*,int) ;
 int schedule_work (int *) ;
 int usb_bulk_msg (int ,int ,int ,int ,int*,int ) ;
 int usb_clear_halt (int ,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct usb_fpix *dev = (struct usb_fpix *) gspca_dev;
 int ret, len;


 ret = command(gspca_dev, 0);
 if (ret < 0) {
  pr_err("init failed %d\n", ret);
  return ret;
 }



 ret = usb_bulk_msg(gspca_dev->dev,
   gspca_dev->urb[0]->pipe,
   gspca_dev->urb[0]->transfer_buffer,
   FPIX_MAX_TRANSFER, &len,
   FPIX_TIMEOUT);
 if (ret < 0) {
  pr_err("usb_bulk_msg failed %d\n", ret);
  return ret;
 }


 ret = command(gspca_dev, 1);
 if (ret < 0) {
  pr_err("frame request failed %d\n", ret);
  return ret;
 }


 usb_clear_halt(gspca_dev->dev, gspca_dev->urb[0]->pipe);

 schedule_work(&dev->work_struct);

 return 0;
}
