
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 scalar_t__ SENSOR_OV361x ;
 scalar_t__ SENSOR_OV562x ;
 scalar_t__ SENSOR_OV971x ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 if (sd->sensor == SENSOR_OV971x)
  return 0;
 if (sd->sensor == SENSOR_OV361x)
  return 0;
 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 7);
 if (sd->sensor == SENSOR_OV562x) {
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, -90, 90, 1, 0);
 } else {
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 15, 1, 7);
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 15, 1, 3);
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0, 4, 1, 2);

  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, -1, 4, 1, -1);
  gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 0, 3, 1, 0);
  v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0, 0);
  v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 0);
 }

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 return 0;
}
