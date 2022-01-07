
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; struct usb_device* dev; } ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int pr_err (char*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev, u16 index, u8 val)
{
 int ret;
 struct usb_device *dev = gspca_dev->dev;

 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   0x01,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   val,
   index,
   ((void*)0),
   0,
   500);
 gspca_dbg(gspca_dev, D_USBO, "reg_w 0x%x:=0x%02x\n", index, val);
 if (ret < 0) {
  pr_err("reg_w 0x%x err %d\n", index, ret);
  gspca_dev->usb_err = ret;
 }
}
