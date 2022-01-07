
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w_1(struct gspca_dev *gspca_dev,
     u8 req,
     u16 value,
     u16 index,
     u16 byte)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dev->usb_buf[0] = byte;
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   req,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index,
   gspca_dev->usb_buf, 1,
   500);
 if (ret < 0) {
  pr_err("reg_w_1 err %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}
