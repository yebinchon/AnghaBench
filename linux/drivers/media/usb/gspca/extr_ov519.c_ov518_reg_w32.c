
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int usb_err; scalar_t__ usb_buf; int dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;
typedef int __le32 ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __cpu_to_le32 (int ) ;
 int gspca_err (struct gspca_dev*,char*,int ,int) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,scalar_t__,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void ov518_reg_w32(struct sd *sd, u16 index, u32 value, int n)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return;

 *((__le32 *) sd->gspca_dev.usb_buf) = __cpu_to_le32(value);


 udelay(150);
 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_sndctrlpipe(sd->gspca_dev.dev, 0),
   1 ,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index,
   sd->gspca_dev.usb_buf, n, 500);
 if (ret < 0) {
  gspca_err(gspca_dev, "reg_w32 %02x failed %d\n", index, ret);
  sd->gspca_dev.usb_err = ret;
 }
}
