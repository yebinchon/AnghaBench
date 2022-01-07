
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {scalar_t__ value; } ;
struct v4l2_ctrl {int is_int; } ;
typedef scalar_t__ s32 ;


 int WARN_ON (int) ;
 int get_ctrl (struct v4l2_ctrl*,struct v4l2_ext_control*) ;

s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_ext_control c;


 WARN_ON(!ctrl->is_int);
 c.value = 0;
 get_ctrl(ctrl, &c);
 return c.value;
}
