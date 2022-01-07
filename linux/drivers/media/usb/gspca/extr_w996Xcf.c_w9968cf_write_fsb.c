
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int usb_err; int usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int memcpy (int ,int *,int) ;
 int pr_err (char*,int) ;
 int udelay (int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int,int ,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static void w9968cf_write_fsb(struct sd *sd, u16* data)
{
 struct usb_device *udev = sd->gspca_dev.dev;
 u16 value;
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return;

 value = *data++;
 memcpy(sd->gspca_dev.usb_buf, data, 6);


 udelay(150);
 ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0,
         USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
         value, 0x06, sd->gspca_dev.usb_buf, 6, 500);
 if (ret < 0) {
  pr_err("Write FSB registers failed (%d)\n", ret);
  sd->gspca_dev.usb_err = ret;
 }
}
