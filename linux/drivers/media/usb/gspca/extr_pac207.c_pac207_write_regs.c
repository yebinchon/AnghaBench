
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int usb_buf; struct usb_device* dev; } ;


 int PAC207_CTRL_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int memcpy (int ,int const*,int ) ;
 int pr_err (char*,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int ,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void pac207_write_regs(struct gspca_dev *gspca_dev, u16 index,
 const u8 *buffer, u16 length)
{
 struct usb_device *udev = gspca_dev->dev;
 int err;

 if (gspca_dev->usb_err < 0)
  return;

 memcpy(gspca_dev->usb_buf, buffer, length);

 err = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x01,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0x00, index,
   gspca_dev->usb_buf, length, PAC207_CTRL_TIMEOUT);
 if (err < 0) {
  pr_err("Failed to write registers to index 0x%04X, error %d\n",
         index, err);
  gspca_dev->usb_err = err;
 }
}
