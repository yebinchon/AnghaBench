
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int usb_err; int dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int W9968CF_I2C_BUS_DELAY ;
 int pr_err (char*,int ) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void w9968cf_write_sb(struct sd *sd, u16 value)
{
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return;


 udelay(150);



 ret = usb_control_msg(sd->gspca_dev.dev,
  usb_sndctrlpipe(sd->gspca_dev.dev, 0),
  0,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value, 0x01, ((void*)0), 0, 500);

 udelay(W9968CF_I2C_BUS_DELAY);

 if (ret < 0) {
  pr_err("Write SB reg [01] %04x failed\n", value);
  sd->gspca_dev.usb_err = ret;
 }
}
