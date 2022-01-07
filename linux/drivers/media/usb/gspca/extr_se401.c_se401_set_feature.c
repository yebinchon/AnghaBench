
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; int dev; } ;


 int SE401_REQ_SET_EXT_FEATURE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void se401_set_feature(struct gspca_dev *gspca_dev,
         u16 selector, u16 param)
{
 int err;

 if (gspca_dev->usb_err < 0)
  return;

 err = usb_control_msg(gspca_dev->dev,
         usb_sndctrlpipe(gspca_dev->dev, 0),
         SE401_REQ_SET_EXT_FEATURE,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         param, selector, ((void*)0), 0, 1000);
 if (err < 0) {
  pr_err("set feature failed sel %#04x param %#04x error %d\n",
         selector, param, err);
  gspca_dev->usb_err = err;
 }
}
