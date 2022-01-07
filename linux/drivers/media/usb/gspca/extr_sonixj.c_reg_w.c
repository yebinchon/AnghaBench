
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int usb_err; int usb_buf; int dev; } ;


 int D_USBO ;
 int USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int const,int const) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int memcpy (int ,int const*,int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
     u16 value,
     const u8 *buffer,
     int len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_USBO, "reg_w [%04x] = %02x %02x ..\n",
    value, buffer[0], buffer[1]);

 if (len > USB_BUF_SZ) {
  gspca_err(gspca_dev, "reg_w: buffer overflow\n");
  return;
 }

 memcpy(gspca_dev->usb_buf, buffer, len);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value, 0,
   gspca_dev->usb_buf, len,
   500);
 if (ret < 0) {
  pr_err("reg_w err %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}
