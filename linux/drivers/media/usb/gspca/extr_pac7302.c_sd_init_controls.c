
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {void* hflip; void* brightness; void* sharpness; void* vflip; void* blue_balance; void* red_balance; void* white_balance; void* saturation; void* contrast; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* gain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int PAC7302_EXPOSURE_DEFAULT ;
 int PAC7302_GAIN_DEFAULT ;
 int PAC7302_RGB_BALANCE_DEFAULT ;
 int PAC7302_RGB_BALANCE_MAX ;
 int PAC7302_RGB_BALANCE_MIN ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_VFLIP ;
 int V4L2_CID_WHITE_BALANCE_TEMPERATURE ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 12);

 sd->brightness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_BRIGHTNESS, 0, 32, 1, 16);
 sd->contrast = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_CONTRAST, 0, 255, 1, 127);

 sd->saturation = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_SATURATION, 0, 255, 1, 127);
 sd->white_balance = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_WHITE_BALANCE_TEMPERATURE,
     0, 255, 1, 55);
 sd->red_balance = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_RED_BALANCE,
     PAC7302_RGB_BALANCE_MIN,
     PAC7302_RGB_BALANCE_MAX,
     1, PAC7302_RGB_BALANCE_DEFAULT);
 sd->blue_balance = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_BLUE_BALANCE,
     PAC7302_RGB_BALANCE_MIN,
     PAC7302_RGB_BALANCE_MAX,
     1, PAC7302_RGB_BALANCE_DEFAULT);

 gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 1023, 1,
     PAC7302_EXPOSURE_DEFAULT);
 gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_GAIN, 0, 62, 1,
     PAC7302_GAIN_DEFAULT);

 sd->hflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
  V4L2_CID_HFLIP, 0, 1, 1, 0);
 sd->vflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
  V4L2_CID_VFLIP, 0, 1, 1, 0);

 sd->sharpness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_SHARPNESS, 0, 15, 1, 8);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_cluster(2, &sd->brightness);
 v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 0);
 v4l2_ctrl_cluster(2, &sd->hflip);
 return 0;
}
