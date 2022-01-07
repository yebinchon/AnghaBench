
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; void* awb; int freq; void* red_balance; void* blue_balance; void* gain; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int GAMMA_MAX ;
 scalar_t__ SENSOR_TAS5130A ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BACKLIGHT_COMPENSATION ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_COLORFX_BW ;
 int V4L2_COLORFX_NEGATIVE ;
 int V4L2_COLORFX_NONE ;
 int V4L2_COLORFX_SEPIA ;
 int V4L2_COLORFX_SKETCH ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 12);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 14, 1, 8);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 0x0d, 1, 7);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0, 0xf, 1, 5);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAMMA, 0, GAMMA_MAX, 1, 10);


 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BACKLIGHT_COMPENSATION, 0, 1, 1, 1);
 if (sd->sensor == SENSOR_TAS5130A)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
    V4L2_CID_HFLIP, 0, 1, 1, 0);
 sd->awb = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
 sd->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0x10, 0x40, 1, 0x20);
 sd->blue_balance = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, -0x30, 0x30, 1, 0);
 sd->red_balance = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_RED_BALANCE, -0x30, 0x30, 1, 0);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 15, 1, 6);
 v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_COLORFX, V4L2_COLORFX_SKETCH,
   ~((1 << V4L2_COLORFX_NONE) |
     (1 << V4L2_COLORFX_BW) |
     (1 << V4L2_COLORFX_SEPIA) |
     (1 << V4L2_COLORFX_SKETCH) |
     (1 << V4L2_COLORFX_NEGATIVE)),
   V4L2_COLORFX_NONE);
 sd->freq = v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 1,
   V4L2_CID_POWER_LINE_FREQUENCY_50HZ);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_auto_cluster(4, &sd->awb, 0, 1);

 return 0;
}
