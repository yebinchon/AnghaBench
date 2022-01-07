
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; void* autoexposure; void* autogain; void* plfreq; void* vflip; void* hflip; void* sharpness; void* autowhitebalance; void* exposure; void* gain; void* contrast; void* brightness; void* saturation; void* hue; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; } ;


 scalar_t__ SENSOR_OV767x ;
 scalar_t__ SENSOR_OV772x ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_HUE ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_DISABLED ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_VFLIP ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int ov534_ctrl_ops ;
 int pr_err (char*) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &sd->ctrl_handler;

 int saturation_min;
 int saturation_max;
 int saturation_def;
 int brightness_min;
 int brightness_max;
 int brightness_def;
 int contrast_max;
 int contrast_def;
 int exposure_min;
 int exposure_max;
 int exposure_def;
 int hflip_def;

 if (sd->sensor == SENSOR_OV767x) {
  saturation_min = 0,
  saturation_max = 6,
  saturation_def = 3,
  brightness_min = -127;
  brightness_max = 127;
  brightness_def = 0;
  contrast_max = 0x80;
  contrast_def = 0x40;
  exposure_min = 0x08;
  exposure_max = 0x60;
  exposure_def = 0x13;
  hflip_def = 1;
 } else {
  saturation_min = 0,
  saturation_max = 255,
  saturation_def = 64,
  brightness_min = 0;
  brightness_max = 255;
  brightness_def = 0;
  contrast_max = 255;
  contrast_def = 32;
  exposure_min = 0;
  exposure_max = 255;
  exposure_def = 120;
  hflip_def = 0;
 }

 gspca_dev->vdev.ctrl_handler = hdl;

 v4l2_ctrl_handler_init(hdl, 13);

 if (sd->sensor == SENSOR_OV772x)
  sd->hue = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
    V4L2_CID_HUE, -90, 90, 1, 0);

 sd->saturation = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_SATURATION, saturation_min, saturation_max, 1,
   saturation_def);
 sd->brightness = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_BRIGHTNESS, brightness_min, brightness_max, 1,
   brightness_def);
 sd->contrast = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_CONTRAST, 0, contrast_max, 1, contrast_def);

 if (sd->sensor == SENSOR_OV772x) {
  sd->autogain = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
    V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
  sd->gain = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
    V4L2_CID_GAIN, 0, 63, 1, 20);
 }

 sd->autoexposure = v4l2_ctrl_new_std_menu(hdl, &ov534_ctrl_ops,
   V4L2_CID_EXPOSURE_AUTO,
   V4L2_EXPOSURE_MANUAL, 0,
   V4L2_EXPOSURE_AUTO);
 sd->exposure = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_EXPOSURE, exposure_min, exposure_max, 1,
   exposure_def);

 sd->autowhitebalance = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);

 if (sd->sensor == SENSOR_OV772x)
  sd->sharpness = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
    V4L2_CID_SHARPNESS, 0, 63, 1, 0);

 sd->hflip = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, hflip_def);
 sd->vflip = v4l2_ctrl_new_std(hdl, &ov534_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 sd->plfreq = v4l2_ctrl_new_std_menu(hdl, &ov534_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_50HZ, 0,
   V4L2_CID_POWER_LINE_FREQUENCY_DISABLED);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 if (sd->sensor == SENSOR_OV772x)
  v4l2_ctrl_auto_cluster(2, &sd->autogain, 0, 1);

 v4l2_ctrl_auto_cluster(2, &sd->autoexposure, V4L2_EXPOSURE_MANUAL,
          1);

 return 0;
}
