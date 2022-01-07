
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_ext_control {int value; int member_0; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int flags; int is_int; } ;
struct v4l2_control {int value; int id; } ;


 int EACCES ;
 int EINVAL ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int set_ctrl_lock (struct v4l2_fh*,struct v4l2_ctrl*,struct v4l2_ext_control*) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;

int v4l2_s_ctrl(struct v4l2_fh *fh, struct v4l2_ctrl_handler *hdl,
     struct v4l2_control *control)
{
 struct v4l2_ctrl *ctrl = v4l2_ctrl_find(hdl, control->id);
 struct v4l2_ext_control c = { control->id };
 int ret;

 if (ctrl == ((void*)0) || !ctrl->is_int)
  return -EINVAL;

 if (ctrl->flags & V4L2_CTRL_FLAG_READ_ONLY)
  return -EACCES;

 c.value = control->value;
 ret = set_ctrl_lock(fh, ctrl, &c);
 control->value = c.value;
 return ret;
}
