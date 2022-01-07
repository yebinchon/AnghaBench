
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_SATURATION ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 0x20);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 0x1a);
 v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 return 0;
}
