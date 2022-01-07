
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int D_USBI ;
 int USB_BUF_SZ ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int memset (int *,int ,int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    u16 value, int len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 if (len > USB_BUF_SZ) {
  gspca_err(gspca_dev, "reg_r: buffer overflow\n");
  return;
 }

 ret = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value, 0,
   gspca_dev->usb_buf, len,
   500);
 gspca_dbg(gspca_dev, D_USBI, "reg_r [%02x] -> %02x\n",
    value, gspca_dev->usb_buf[0]);
 if (ret < 0) {
  pr_err("reg_r err %d\n", ret);
  gspca_dev->usb_err = ret;




  memset(gspca_dev->usb_buf, 0, USB_BUF_SZ);
 }
}
