
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 scalar_t__ USB_BUF_SZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_err (struct gspca_dev*,char*) ;
 int memset (int *,int ,scalar_t__) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,scalar_t__,int *,scalar_t__,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    u8 req,
    u16 index,
    u16 len)
{
 int ret;

 if (len > USB_BUF_SZ) {
  gspca_err(gspca_dev, "reg_r: buffer overflow\n");
  return;
 }
 if (gspca_dev->usb_err < 0)
  return;
 ret = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index,
   len ? gspca_dev->usb_buf : ((void*)0), len,
   500);
 if (ret < 0) {
  pr_err("reg_r err %d\n", ret);
  gspca_dev->usb_err = ret;




  memset(gspca_dev->usb_buf, 0, USB_BUF_SZ);
 }
}
