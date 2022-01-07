
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; int flags; void* vflip; void* red_bal; int freq; void* hflip; void* illum; void* sharpness; void* gamma; void* blue_bal; void* saturation; void* contrast; void* brightness; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* gain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int COLORS_DEF ;
 int CONTRAST_MAX ;
 int F_ILLUM ;
 int GAMMA_DEF ;
 scalar_t__ SENSOR_ADCM1700 ;
 scalar_t__ SENSOR_HV7131R ;
 scalar_t__ SENSOR_OM6802 ;
 scalar_t__ SENSOR_OV7630 ;
 scalar_t__ SENSOR_OV7648 ;
 scalar_t__ SENSOR_OV7660 ;
 scalar_t__ SENSOR_PO1030 ;
 scalar_t__ SENSOR_PO2030N ;
 scalar_t__ SENSOR_SOI768 ;
 scalar_t__ SENSOR_SP80708 ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_ILLUMINATORS_1 ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_VFLIP ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 14);

 sd->brightness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);

 sd->contrast = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 127, 1, 20);

 sd->saturation = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0, 40, 1, 25);
 sd->red_bal = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_RED_BALANCE, 24, 40, 1, 32);
 sd->blue_bal = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, 24, 40, 1, 32);

 sd->gamma = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAMMA, 0, 40, 1, 20);

 if (sd->sensor == SENSOR_OM6802)
  sd->sharpness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 255, 1, 16);
 else
  sd->sharpness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 255, 1, 90);

 if (sd->flags & F_ILLUM)
  sd->illum = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_ILLUMINATORS_1, 0, 1, 1, 0);

 if (sd->sensor == SENSOR_PO2030N) {
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 500, 1500, 1, 1024);
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 4, 49, 1, 15);
  sd->hflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
 }

 if (sd->sensor != SENSOR_ADCM1700 && sd->sensor != SENSOR_OV7660 &&
     sd->sensor != SENSOR_PO1030 && sd->sensor != SENSOR_SOI768 &&
     sd->sensor != SENSOR_SP80708)
  gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);

 if (sd->sensor == SENSOR_HV7131R || sd->sensor == SENSOR_OV7630 ||
     sd->sensor == SENSOR_OV7648 || sd->sensor == SENSOR_PO2030N)
  sd->vflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);

 if (sd->sensor == SENSOR_OV7630 || sd->sensor == SENSOR_OV7648 ||
     sd->sensor == SENSOR_OV7660)
  sd->freq = v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0,
   V4L2_CID_POWER_LINE_FREQUENCY_50HZ);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_cluster(2, &sd->red_bal);
 if (sd->sensor == SENSOR_PO2030N) {
  v4l2_ctrl_cluster(2, &sd->vflip);
  v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 0);
 }

 return 0;
}
