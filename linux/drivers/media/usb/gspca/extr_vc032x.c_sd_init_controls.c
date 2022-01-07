
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {int sensor; void* hflip; void* vflip; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BACKLIGHT_COMPENSATION ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_VFLIP ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;
 bool has_brightness = 0;
 bool has_contrast = 0;
 bool has_sat = 0;
 bool has_hvflip = 0;
 bool has_freq = 0;
 bool has_backlight = 0;
 bool has_exposure = 0;
 bool has_autogain = 0;
 bool has_gain = 0;
 bool has_sharpness = 0;

 switch (sd->sensor) {
 case 137:
 case 136:
 case 129:
  break;
 case 135:
 case 134:
 case 133:
 case 132:
  has_hvflip = 1;
  break;
 case 131:
  has_hvflip = has_freq = 1;
  break;
 case 130:
  has_hvflip = has_sharpness = 1;
  break;
 case 128:
  has_brightness = has_contrast = has_sat = has_backlight =
   has_exposure = has_autogain = has_gain =
   has_sharpness = 1;
  break;
 }

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 8);
 if (has_brightness)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 if (has_contrast)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 127);
 if (has_sat)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 1, 127, 1, 63);
 if (has_hvflip) {
  sd->hflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
  sd->vflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 }
 if (has_sharpness)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, -1, 2, 1, -1);
 if (has_freq)
  v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0,
   V4L2_CID_POWER_LINE_FREQUENCY_50HZ);
 if (has_autogain)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 if (has_gain)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0, 78, 1, 0);
 if (has_exposure)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 0, 4095, 1, 450);
 if (has_backlight)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BACKLIGHT_COMPENSATION, 0, 15, 1, 15);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 if (sd->hflip)
  v4l2_ctrl_cluster(2, &sd->hflip);
 return 0;
}
