
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb_err; int* usb_buf; int dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int W9968CF_I2C_BUS_DELAY ;
 int memset (int*,int ,int) ;
 int pr_err (char*) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int,int,int ,int,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int w9968cf_read_sb(struct sd *sd)
{
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return -1;


 udelay(150);



 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_rcvctrlpipe(sd->gspca_dev.dev, 0),
   1,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, 0x01, sd->gspca_dev.usb_buf, 2, 500);
 if (ret >= 0) {
  ret = sd->gspca_dev.usb_buf[0] |
        (sd->gspca_dev.usb_buf[1] << 8);
 } else {
  pr_err("Read SB reg [01] failed\n");
  sd->gspca_dev.usb_err = ret;




  memset(sd->gspca_dev.usb_buf, 0, 2);
 }

 udelay(W9968CF_I2C_BUS_DELAY);

 return ret;
}
