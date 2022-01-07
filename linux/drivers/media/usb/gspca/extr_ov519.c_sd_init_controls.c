
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {size_t sensor; scalar_t__ bridge; void* hflip; void* autobright; void* jpegqual; void* freq; void* vflip; void* brightness; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_4__ {scalar_t__ has_freq; scalar_t__ has_autogain; scalar_t__ has_autobright; scalar_t__ has_hvflip; scalar_t__ has_exposure; scalar_t__ has_sat; scalar_t__ has_contrast; scalar_t__ has_brightness; } ;


 scalar_t__ BRIDGE_W9968CF ;
 int QUALITY_DEF ;
 int QUALITY_MAX ;
 int QUALITY_MIN ;
 size_t SEN_OV6630 ;
 size_t SEN_OV66308AF ;
 size_t SEN_OV7660 ;
 size_t SEN_OV7670 ;
 int V4L2_CID_AUTOBRIGHTNESS ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_VFLIP ;
 int gspca_err (struct gspca_dev*,char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 TYPE_2__* valid_controls ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 10);
 if (valid_controls[sd->sensor].has_brightness)
  sd->brightness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0,
   sd->sensor == SEN_OV7660 ? 6 : 255, 1,
   sd->sensor == SEN_OV7660 ? 3 : 127);
 if (valid_controls[sd->sensor].has_contrast) {
  if (sd->sensor == SEN_OV7660)
   v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
    V4L2_CID_CONTRAST, 0, 6, 1, 3);
  else
   v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
    V4L2_CID_CONTRAST, 0, 255, 1,
    (sd->sensor == SEN_OV6630 ||
     sd->sensor == SEN_OV66308AF) ? 200 : 127);
 }
 if (valid_controls[sd->sensor].has_sat)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0,
   sd->sensor == SEN_OV7660 ? 4 : 255, 1,
   sd->sensor == SEN_OV7660 ? 2 : 127);
 if (valid_controls[sd->sensor].has_exposure)
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 0, 255, 1, 127);
 if (valid_controls[sd->sensor].has_hvflip) {
  sd->hflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
  sd->vflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 }
 if (valid_controls[sd->sensor].has_autobright)
  sd->autobright = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOBRIGHTNESS, 0, 1, 1, 1);
 if (valid_controls[sd->sensor].has_autogain)
  gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 if (valid_controls[sd->sensor].has_freq) {
  if (sd->sensor == SEN_OV7670)
   sd->freq = v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
    V4L2_CID_POWER_LINE_FREQUENCY,
    V4L2_CID_POWER_LINE_FREQUENCY_AUTO, 0,
    V4L2_CID_POWER_LINE_FREQUENCY_AUTO);
  else
   sd->freq = v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
    V4L2_CID_POWER_LINE_FREQUENCY,
    V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0, 0);
 }
 if (sd->bridge == BRIDGE_W9968CF)
  sd->jpegqual = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_JPEG_COMPRESSION_QUALITY,
   QUALITY_MIN, QUALITY_MAX, 1, QUALITY_DEF);

 if (hdl->error) {
  gspca_err(gspca_dev, "Could not initialize controls\n");
  return hdl->error;
 }
 if (gspca_dev->autogain)
  v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 1);
 if (sd->autobright)
  v4l2_ctrl_auto_cluster(2, &sd->autobright, 0, 0);
 if (sd->hflip)
  v4l2_ctrl_cluster(2, &sd->hflip);
 return 0;
}
