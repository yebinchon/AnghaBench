
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ bridge; scalar_t__ sensor; int jpegqual; int red; int blue; int quality; int jpeg_hdr; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {int usb_err; int exposure; int autogain; int gain; scalar_t__ curr_mode; TYPE_1__ pixfmt; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ BRIDGE_TP6800 ;
 scalar_t__ BRIDGE_TP6810 ;
 scalar_t__ SENSOR_CX0342 ;
 scalar_t__ SENSOR_SOI763A ;
 int cx0342_6800_start (struct gspca_dev*) ;
 int cx0342_6810_start (struct gspca_dev*) ;
 int jpeg_define (int ,int ,int ) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_buf (struct gspca_dev*,int ,int ) ;
 int set_dqt (struct gspca_dev*,int ) ;
 int setautogain (struct gspca_dev*,int ) ;
 int setexposure (struct gspca_dev*,int ,int ,int ,int ) ;
 int setframerate (struct gspca_dev*,int ) ;
 int setquality (struct gspca_dev*,int ) ;
 int soi763a_6800_start (struct gspca_dev*) ;
 int soi763a_6810_start (struct gspca_dev*) ;
 int tp6810_late_start ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 jpeg_define(sd->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width);
 set_dqt(gspca_dev, sd->quality);
 if (sd->bridge == BRIDGE_TP6800) {
  if (sd->sensor == SENSOR_CX0342)
   cx0342_6800_start(gspca_dev);
  else
   soi763a_6800_start(gspca_dev);
 } else {
  if (sd->sensor == SENSOR_CX0342)
   cx0342_6810_start(gspca_dev);
  else
   soi763a_6810_start(gspca_dev);
  reg_w_buf(gspca_dev, tp6810_late_start,
    ARRAY_SIZE(tp6810_late_start));
  reg_w(gspca_dev, 0x80, 0x03);
  reg_w(gspca_dev, 0x82, gspca_dev->curr_mode ? 0x0a : 0x0e);

  if (sd->sensor == SENSOR_CX0342)
   setexposure(gspca_dev,
    v4l2_ctrl_g_ctrl(gspca_dev->exposure),
    v4l2_ctrl_g_ctrl(gspca_dev->gain),
    v4l2_ctrl_g_ctrl(sd->blue),
    v4l2_ctrl_g_ctrl(sd->red));
  else
   setexposure(gspca_dev,
    v4l2_ctrl_g_ctrl(gspca_dev->exposure),
    v4l2_ctrl_g_ctrl(gspca_dev->gain), 0, 0);
  if (sd->sensor == SENSOR_SOI763A)
   setquality(gspca_dev,
       v4l2_ctrl_g_ctrl(sd->jpegqual));
  if (sd->bridge == BRIDGE_TP6810)
   setautogain(gspca_dev,
        v4l2_ctrl_g_ctrl(gspca_dev->autogain));
 }

 setframerate(gspca_dev, v4l2_ctrl_g_ctrl(gspca_dev->exposure));

 return gspca_dev->usb_err;
}
