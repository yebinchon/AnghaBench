
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int * usb_buf; struct usb_device* dev; } ;
typedef scalar_t__ __u16 ;


 int D_USBI ;
 scalar_t__ USB_BUF_SZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__,int ) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,scalar_t__,int *,scalar_t__,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    __u16 index,
    __u16 len)
{
 struct usb_device *dev = gspca_dev->dev;

 if (len > USB_BUF_SZ) {
  gspca_err(gspca_dev, "reg_r: buffer overflow\n");
  return;
 }

 usb_control_msg(dev,
   usb_rcvctrlpipe(dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index, gspca_dev->usb_buf, len,
   500);
 gspca_dbg(gspca_dev, D_USBI, "reg read [%02x] -> %02x ..\n",
    index, gspca_dev->usb_buf[0]);
}
