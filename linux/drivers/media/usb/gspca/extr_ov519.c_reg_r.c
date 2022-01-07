
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int usb_err; int* usb_buf; int dev; } ;
struct sd {int bridge; TYPE_1__ gspca_dev; } ;
struct gspca_dev {scalar_t__* usb_buf; } ;





 int D_USBI ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int ,int) ;
 int gspca_err (struct gspca_dev*,char*,int ,int) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int reg_r(struct sd *sd, u16 index)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int ret;
 int req;

 if (sd->gspca_dev.usb_err < 0)
  return -1;

 switch (sd->bridge) {
 case 130:
 case 129:
  req = 3;
  break;
 case 128:
  req = 0x0b;
  break;
 default:
  req = 1;
 }


 udelay(150);
 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_rcvctrlpipe(sd->gspca_dev.dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index, sd->gspca_dev.usb_buf, 1, 500);

 if (ret >= 0) {
  ret = sd->gspca_dev.usb_buf[0];
  gspca_dbg(gspca_dev, D_USBI, "GET %02x 0000 %04x %02x\n",
     req, index, ret);
 } else {
  gspca_err(gspca_dev, "reg_r %02x failed %d\n", index, ret);
  sd->gspca_dev.usb_err = ret;




  gspca_dev->usb_buf[0] = 0;
 }

 return ret;
}
