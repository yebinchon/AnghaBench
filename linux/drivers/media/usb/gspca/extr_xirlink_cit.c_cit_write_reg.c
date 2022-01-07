
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int cit_write_reg(struct gspca_dev *gspca_dev, u16 value, u16 index)
{
 struct usb_device *udev = gspca_dev->dev;
 int err;

 err = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x00,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
   value, index, ((void*)0), 0, 1000);
 if (err < 0)
  pr_err("Failed to write a register (index 0x%04X, value 0x%02X, error %d)\n",
         index, value, err);

 return 0;
}
