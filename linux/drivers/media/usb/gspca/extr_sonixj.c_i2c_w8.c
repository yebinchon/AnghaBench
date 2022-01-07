
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_err; int usb_buf; int dev; } ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int const,int const) ;
 int memcpy (int ,int const*,int) ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void i2c_w8(struct gspca_dev *gspca_dev,
     const u8 *buffer)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_USBO, "i2c_w8 [%02x] = %02x ..\n",
    buffer[2], buffer[3]);
 memcpy(gspca_dev->usb_buf, buffer, 8);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0x08, 0,
   gspca_dev->usb_buf, 8,
   500);
 msleep(2);
 if (ret < 0) {
  pr_err("i2c_w8 err %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}
