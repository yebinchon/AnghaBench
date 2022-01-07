
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler ctrl_handler; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int st6422_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;

__attribute__((used)) static int st6422_init_controls(struct sd *sd)
{
 struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &st6422_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 31, 1, 3);
 v4l2_ctrl_new_std(hdl, &st6422_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 15, 1, 11);
 v4l2_ctrl_new_std(hdl, &st6422_ctrl_ops,
   V4L2_CID_EXPOSURE, 0, 1023, 1, 256);
 v4l2_ctrl_new_std(hdl, &st6422_ctrl_ops,
   V4L2_CID_GAIN, 0, 255, 1, 64);

 return hdl->error;
}
