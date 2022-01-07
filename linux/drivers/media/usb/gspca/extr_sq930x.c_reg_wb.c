
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int usb_err; int usb_buf; int dev; } ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int const,int const) ;
 int memcpy (int ,int const*,int) ;
 int msleep (int) ;
 int pr_err (char*,int ,int ,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_wb(struct gspca_dev *gspca_dev, u16 value, u16 index,
  const u8 *data, int len)
{
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_USBO, "reg_wb v: %04x i: %04x %02x...%02x\n",
    value, index, *data, data[len - 1]);
 memcpy(gspca_dev->usb_buf, data, len);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x0c,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, gspca_dev->usb_buf, len,
   1000);
 msleep(30);
 if (ret < 0) {
  pr_err("reg_wb %04x %04x failed %d\n", value, index, ret);
  gspca_dev->usb_err = ret;
 }
}
