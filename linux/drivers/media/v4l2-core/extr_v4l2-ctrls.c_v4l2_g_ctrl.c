
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int value; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int is_int; } ;
struct v4l2_control {int value; int id; } ;


 int EINVAL ;
 int get_ctrl (struct v4l2_ctrl*,struct v4l2_ext_control*) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;

int v4l2_g_ctrl(struct v4l2_ctrl_handler *hdl, struct v4l2_control *control)
{
 struct v4l2_ctrl *ctrl = v4l2_ctrl_find(hdl, control->id);
 struct v4l2_ext_control c;
 int ret;

 if (ctrl == ((void*)0) || !ctrl->is_int)
  return -EINVAL;
 ret = get_ctrl(ctrl, &c);
 control->value = c.value;
 return ret;
}
