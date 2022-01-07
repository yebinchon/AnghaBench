
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int * usb_buf; struct usb_device* dev; } ;


 int CTRL_TIMEOUT ;
 int D_USBI ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static u8 reg_r(struct gspca_dev *gspca_dev, u16 reg)
{
 struct usb_device *udev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return 0;
 ret = usb_control_msg(udev,
         usb_rcvctrlpipe(udev, 0),
         0x01,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0x00, reg, gspca_dev->usb_buf, 1, CTRL_TIMEOUT);
 gspca_dbg(gspca_dev, D_USBI, "reg_r [%04x] -> %02x\n",
    reg, gspca_dev->usb_buf[0]);
 if (ret < 0) {
  pr_err("reg_r err %d\n", ret);
  gspca_dev->usb_err = ret;
  return 0;
 }
 return gspca_dev->usb_buf[0];
}
