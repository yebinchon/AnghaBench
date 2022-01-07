
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int * usb_buf; struct usb_device* dev; } ;
typedef int __u8 ;


 int D_PROBE ;
 int USB_DIR_IN ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int pr_err (char*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int cit_read_reg(struct gspca_dev *gspca_dev, u16 index, int verbose)
{
 struct usb_device *udev = gspca_dev->dev;
 __u8 *buf = gspca_dev->usb_buf;
 int res;

 res = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x01,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
   0x00, index, buf, 8, 1000);
 if (res < 0) {
  pr_err("Failed to read a register (index 0x%04X, error %d)\n",
         index, res);
  return res;
 }

 if (verbose)
  gspca_dbg(gspca_dev, D_PROBE, "Register %04x value: %02x\n",
     index, buf[0]);

 return 0;
}
