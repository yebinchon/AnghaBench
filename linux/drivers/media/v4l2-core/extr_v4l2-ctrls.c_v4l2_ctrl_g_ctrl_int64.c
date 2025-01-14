
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {scalar_t__ value64; } ;
struct v4l2_ctrl {scalar_t__ type; scalar_t__ is_ptr; } ;
typedef scalar_t__ s64 ;


 scalar_t__ V4L2_CTRL_TYPE_INTEGER64 ;
 int WARN_ON (int) ;
 int get_ctrl (struct v4l2_ctrl*,struct v4l2_ext_control*) ;

s64 v4l2_ctrl_g_ctrl_int64(struct v4l2_ctrl *ctrl)
{
 struct v4l2_ext_control c;


 WARN_ON(ctrl->is_ptr || ctrl->type != V4L2_CTRL_TYPE_INTEGER64);
 c.value64 = 0;
 get_ctrl(ctrl, &c);
 return c.value64;
}
