
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {void* red; void* blue; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* gain; void* exposure; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_RED_BALANCE ;
 int gspca_err (struct gspca_dev*,char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 4);

 gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,


  V4L2_CID_EXPOSURE, 0, 800, 1, 350);
 gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0, 511, 1, 128);
 sd->blue = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, 0, 1023, 1, 80);
 sd->red = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_RED_BALANCE, 0, 1023, 1, 295);

 if (hdl->error) {
  gspca_err(gspca_dev, "Could not initialize controls\n");
  return hdl->error;
 }
 return 0;
}
