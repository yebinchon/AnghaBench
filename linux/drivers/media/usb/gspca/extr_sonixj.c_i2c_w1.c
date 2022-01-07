
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sd {int sensor; int i2c_addr; } ;
struct gspca_dev {int usb_err; int* usb_buf; int dev; } ;


 int D_USBO ;



 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,void*,void*) ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void i2c_w1(struct gspca_dev *gspca_dev, u8 reg, u8 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_USBO, "i2c_w1 [%02x] = %02x\n", reg, val);
 switch (sd->sensor) {
 case 130:
 case 128:
 case 129:
  gspca_dev->usb_buf[0] = 0x80 | (2 << 4);
  break;
 default:
  gspca_dev->usb_buf[0] = 0x81 | (2 << 4);
  break;
 }
 gspca_dev->usb_buf[1] = sd->i2c_addr;
 gspca_dev->usb_buf[2] = reg;
 gspca_dev->usb_buf[3] = val;
 gspca_dev->usb_buf[4] = 0;
 gspca_dev->usb_buf[5] = 0;
 gspca_dev->usb_buf[6] = 0;
 gspca_dev->usb_buf[7] = 0x10;
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   0x08,
   0,
   gspca_dev->usb_buf, 8,
   500);
 msleep(2);
 if (ret < 0) {
  pr_err("i2c_w1 err %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}
