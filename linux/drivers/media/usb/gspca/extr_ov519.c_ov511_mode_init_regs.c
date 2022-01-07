
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_8__ {TYPE_3__ pixfmt; int usb_err; int alt; int iface; int dev; } ;
struct sd {int sensor; int clockdiv; TYPE_4__ gspca_dev; scalar_t__ frame_rate; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_5__ {int wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int EIO ;
 int OV511_RESET_OMNICE ;
 int R511_CAM_LNCNT ;
 int R511_CAM_LNDIV ;
 int R511_CAM_OPTS ;
 int R511_CAM_PXCNT ;
 int R511_CAM_PXDIV ;
 int R511_CAM_UV_EN ;
 int R511_COMP_EN ;
 int R511_COMP_LUT_EN ;
 int R511_SNAP_LNCNT ;
 int R511_SNAP_LNDIV ;
 int R511_SNAP_OPTS ;
 int R511_SNAP_PXCNT ;
 int R511_SNAP_PXDIV ;
 int R511_SNAP_UV_EN ;
 int R51x_FIFO_PSIZE ;
 int R51x_SYS_RESET ;
 scalar_t__ frame_rate ;
 int gspca_err (struct gspca_dev*,char*) ;
 int le16_to_cpu (int ) ;
 int reg_w (struct sd*,int ,int) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static void ov511_mode_init_regs(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int hsegs, vsegs, packet_size, fps, needed;
 int interlaced = 0;
 struct usb_host_interface *alt;
 struct usb_interface *intf;

 intf = usb_ifnum_to_if(sd->gspca_dev.dev, sd->gspca_dev.iface);
 alt = usb_altnum_to_altsetting(intf, sd->gspca_dev.alt);
 if (!alt) {
  gspca_err(gspca_dev, "Couldn't get altsetting\n");
  sd->gspca_dev.usb_err = -EIO;
  return;
 }

 packet_size = le16_to_cpu(alt->endpoint[0].desc.wMaxPacketSize);
 reg_w(sd, R51x_FIFO_PSIZE, packet_size >> 5);

 reg_w(sd, R511_CAM_UV_EN, 0x01);
 reg_w(sd, R511_SNAP_UV_EN, 0x01);
 reg_w(sd, R511_SNAP_OPTS, 0x03);




 hsegs = (sd->gspca_dev.pixfmt.width >> 3) - 1;
 vsegs = (sd->gspca_dev.pixfmt.height >> 3) - 1;

 reg_w(sd, R511_CAM_PXCNT, hsegs);
 reg_w(sd, R511_CAM_LNCNT, vsegs);
 reg_w(sd, R511_CAM_PXDIV, 0x00);
 reg_w(sd, R511_CAM_LNDIV, 0x00);


 reg_w(sd, R511_CAM_OPTS, 0x03);


 reg_w(sd, R511_SNAP_PXCNT, hsegs);
 reg_w(sd, R511_SNAP_LNCNT, vsegs);
 reg_w(sd, R511_SNAP_PXDIV, 0x00);
 reg_w(sd, R511_SNAP_LNDIV, 0x00);


 if (frame_rate > 0)
  sd->frame_rate = frame_rate;

 switch (sd->sensor) {
 case 137:

  sd->clockdiv = 3;
  break;



 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
  if (sd->gspca_dev.pixfmt.width == 320)
   interlaced = 1;

 case 136:
 case 135:
 case 130:
  switch (sd->frame_rate) {
  case 30:
  case 25:

   if (sd->gspca_dev.pixfmt.width != 640) {
    sd->clockdiv = 0;
    break;
   }


  default:


   sd->clockdiv = 1;
   break;
  case 10:
   sd->clockdiv = 2;
   break;
  case 5:
   sd->clockdiv = 5;
   break;
  }
  if (interlaced) {
   sd->clockdiv = (sd->clockdiv + 1) * 2 - 1;

   if (sd->clockdiv > 10)
    sd->clockdiv = 10;
  }
  break;

 case 128:

  sd->clockdiv = 0;
  break;
 }


 fps = (interlaced ? 60 : 30) / (sd->clockdiv + 1) + 1;
 needed = fps * sd->gspca_dev.pixfmt.width *
   sd->gspca_dev.pixfmt.height * 3 / 2;

 if (needed > 1000 * packet_size) {

  reg_w(sd, R511_COMP_EN, 0x07);
  reg_w(sd, R511_COMP_LUT_EN, 0x03);
 } else {
  reg_w(sd, R511_COMP_EN, 0x06);
  reg_w(sd, R511_COMP_LUT_EN, 0x00);
 }

 reg_w(sd, R51x_SYS_RESET, OV511_RESET_OMNICE);
 reg_w(sd, R51x_SYS_RESET, 0);
}
