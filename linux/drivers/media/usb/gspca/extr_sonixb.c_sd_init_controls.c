
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {int sensor; int exposure_knee; int plfreq; int bridge; void* brightness; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* autogain; void* exposure; void* gain; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int BRIDGE_103 ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_DISABLED ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 5);

 if (sd->sensor == 134 || sd->sensor == 133 ||
     sd->sensor == 132 || sd->sensor == 131)
  sd->brightness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_BRIGHTNESS, 0, 255, 1, 127);


 switch (sd->sensor) {
 case 134:
 case 132:
 case 131:
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_GAIN, 0, 31, 1, 15);
  break;
 case 133:
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_GAIN, 0, 47, 1, 31);
  break;
 case 135:
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_GAIN, 0, 63, 1, 31);
  break;
 case 130:
 case 129:
 case 128:
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_GAIN, 0, 255, 1, 127);
  break;
 default:
  if (sd->bridge == BRIDGE_103) {
   gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
      V4L2_CID_GAIN, 0, 127, 1, 63);
  } else {
   gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
      V4L2_CID_GAIN, 0, 15, 1, 7);
  }
 }


 switch (sd->sensor) {
 case 135:
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 8191, 1, 482);
  sd->exposure_knee = 964;
  break;
 case 134:
 case 133:
 case 132:
 case 131:
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 1023, 1, 66);
  sd->exposure_knee = 200;
  break;
 case 130:
 case 129:
  gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
     V4L2_CID_EXPOSURE, 2, 15, 1, 2);
  break;
 }

 if (gspca_dev->exposure) {
  gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
      V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 }

 if (sd->sensor == 134 || sd->sensor == 133)
  sd->plfreq = v4l2_ctrl_new_std_menu(hdl, &sd_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0,
   V4L2_CID_POWER_LINE_FREQUENCY_DISABLED);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 if (gspca_dev->autogain)
  v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 0);

 return 0;
}
