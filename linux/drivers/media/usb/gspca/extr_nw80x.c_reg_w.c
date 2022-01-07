
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int usb_buf; struct usb_device* dev; } ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int const,...) ;
 int memcpy (int ,int const*,int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int ,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
   u16 index,
   const u8 *data,
   int len)
{
 struct usb_device *dev = gspca_dev->dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 if (len == 1)
  gspca_dbg(gspca_dev, D_USBO, "SET 00 0000 %04x %02x\n",
     index, *data);
 else
  gspca_dbg(gspca_dev, D_USBO, "SET 00 0000 %04x %02x %02x ...\n",
     index, *data, data[1]);
 memcpy(gspca_dev->usb_buf, data, len);
 ret = usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   0x00,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0x00,
   index,
   gspca_dev->usb_buf,
   len,
   500);
 if (ret < 0) {
  pr_err("reg_w err %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}
