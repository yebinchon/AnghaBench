
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {int usb_buf; struct usb_device* dev; } ;
typedef int __u8 ;
typedef scalar_t__ __u16 ;


 int D_USBO ;
 scalar_t__ USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__,int const) ;
 int memcpy (int ,int const*,scalar_t__) ;
 int pr_err (char*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,scalar_t__,int ,scalar_t__,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
    __u16 index,
    const __u8 *buffer,
    __u16 len)
{
 struct usb_device *dev = gspca_dev->dev;

 if (len > USB_BUF_SZ) {
  pr_err("reg_w: buffer overflow\n");
  return;
 }
 gspca_dbg(gspca_dev, D_USBO, "reg write [%02x] = %02x..\n",
    index, *buffer);

 memcpy(gspca_dev->usb_buf, buffer, len);
 usb_control_msg(dev,
   usb_sndctrlpipe(dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0, index, gspca_dev->usb_buf, len, 500);
}
