
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct gspca_dev {int usb_err; TYPE_1__ v4l2_dev; int usb_buf; int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int ,int) ;
 int memcpy (int ,int const*,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
    __u16 value,
    const __u8 *buffer,
    int len)
{
 int res;

 if (gspca_dev->usb_err < 0)
  return;

 memcpy(gspca_dev->usb_buf, buffer, len);
 res = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value,
   0,
   gspca_dev->usb_buf, len,
   500);

 if (res < 0) {
  dev_err(gspca_dev->v4l2_dev.dev,
   "Error writing register %02x: %d\n", value, res);
  gspca_dev->usb_err = res;
 }
}
