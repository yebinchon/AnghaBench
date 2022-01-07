
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {TYPE_3__* illum_top; TYPE_2__* illum_bottom; void* sharpness; void* gamma; void* saturation; void* brightness; } ;
struct TYPE_4__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int flags; } ;


 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_ILLUMINATORS_1 ;
 int V4L2_CID_ILLUMINATORS_2 ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int mars_ctrl_ops ;
 int pr_err (char*) ;
 int v4l2_ctrl_cluster (int,TYPE_3__**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 6);
 sd->brightness = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 30, 1, 15);
 sd->saturation = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 200);
 sd->gamma = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_GAMMA, 0, 3, 1, 1);
 sd->sharpness = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 2, 1, 1);
 sd->illum_top = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_ILLUMINATORS_1, 0, 1, 1, 0);
 sd->illum_top->flags |= V4L2_CTRL_FLAG_UPDATE;
 sd->illum_bottom = v4l2_ctrl_new_std(hdl, &mars_ctrl_ops,
   V4L2_CID_ILLUMINATORS_2, 0, 1, 1, 0);
 sd->illum_bottom->flags |= V4L2_CTRL_FLAG_UPDATE;
 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 v4l2_ctrl_cluster(2, &sd->illum_top);
 return 0;
}
