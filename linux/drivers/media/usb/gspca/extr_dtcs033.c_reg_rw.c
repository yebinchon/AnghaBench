
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int usb_buf; struct usb_device* dev; } ;


 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int ,int ,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_rw(struct gspca_dev *gspca_dev,
  u8 bRequestType, u8 bRequest,
  u16 wValue, u16 wIndex, u16 wLength)
{
 struct usb_device *udev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;

 ret = usb_control_msg(udev,
  usb_rcvctrlpipe(udev, 0),
  bRequest,
  bRequestType,
  wValue, wIndex,
  gspca_dev->usb_buf, wLength, 500);

 if (ret < 0) {
  gspca_dev->usb_err = ret;
  pr_err("usb_control_msg error %d\n", ret);
 }

 return;
}
