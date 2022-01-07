
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void se401_write_req(struct gspca_dev *gspca_dev, u16 req, u16 value,
       int silent)
{
 int err;

 if (gspca_dev->usb_err < 0)
  return;

 err = usb_control_msg(gspca_dev->dev,
         usb_sndctrlpipe(gspca_dev->dev, 0), req,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         value, 0, ((void*)0), 0, 1000);
 if (err < 0) {
  if (!silent)
   pr_err("write req failed req %#04x val %#04x error %d\n",
          req, value, err);
  gspca_dev->usb_err = err;
 }
}
