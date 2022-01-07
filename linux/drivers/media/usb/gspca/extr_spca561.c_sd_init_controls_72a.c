
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {void* contrast; void* autogain; void* hue; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int sd_init_controls_72a(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 sd->contrast = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 0x3f, 1, 0x20);
 sd->hue = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HUE, 1, 0x7f, 1, 0x40);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 0x3f, 1, 0x20);
 sd->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 v4l2_ctrl_cluster(2, &sd->contrast);
 return 0;
}
