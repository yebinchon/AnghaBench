
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {void* exposure; void* gain; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int gspca_err (struct gspca_dev*,char*,int) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int dtcs033_init_controls(struct gspca_dev *gspca_dev)
{
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 2);

 sd->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
    V4L2_CID_EXPOSURE,
    1, 150, 1, 75);
 sd->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
    V4L2_CID_GAIN,
    14, 33, 1, 24);
 if (hdl->error) {
  gspca_err(gspca_dev, "Could not initialize controls: %d\n",
     hdl->error);
  return hdl->error;
 }

 v4l2_ctrl_cluster(2, &sd->exposure);
 return 0;
}
