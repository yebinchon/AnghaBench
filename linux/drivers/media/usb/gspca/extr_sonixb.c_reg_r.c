
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct gspca_dev {int usb_err; scalar_t__* usb_buf; TYPE_1__ v4l2_dev; int dev; } ;
typedef int __u16 ;


 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,scalar_t__*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    __u16 value)
{
 int res;

 if (gspca_dev->usb_err < 0)
  return;

 res = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value,
   0,
   gspca_dev->usb_buf, 1,
   500);

 if (res < 0) {
  dev_err(gspca_dev->v4l2_dev.dev,
   "Error reading register %02x: %d\n", value, res);
  gspca_dev->usb_err = res;




  gspca_dev->usb_buf[0] = 0;
 }
}
