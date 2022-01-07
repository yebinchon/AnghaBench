
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; int ctrl_handler; } ;


 int v4l2_ctrl_handler_log_status (int ,int ) ;

int v4l2_ctrl_subdev_log_status(struct v4l2_subdev *sd)
{
 v4l2_ctrl_handler_log_status(sd->ctrl_handler, sd->name);
 return 0;
}
