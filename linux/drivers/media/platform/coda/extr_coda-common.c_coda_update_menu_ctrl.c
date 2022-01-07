
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int maximum; int minimum; int menu_skip_mask; int default_value; } ;


 int __v4l2_ctrl_modify_range (struct v4l2_ctrl*,int,int,int,int ) ;
 int __v4l2_ctrl_s_ctrl (struct v4l2_ctrl*,int) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static void coda_update_menu_ctrl(struct v4l2_ctrl *ctrl, int value)
{
 if (!ctrl)
  return;

 v4l2_ctrl_lock(ctrl);





 if (value > ctrl->maximum) {
  __v4l2_ctrl_modify_range(ctrl, ctrl->minimum, value,
   ctrl->menu_skip_mask & ~(1 << value),
   ctrl->default_value);
 } else if (value < ctrl->minimum) {
  __v4l2_ctrl_modify_range(ctrl, value, ctrl->maximum,
   ctrl->menu_skip_mask & ~(1 << value),
   ctrl->default_value);
 }

 __v4l2_ctrl_s_ctrl(ctrl, value);

 v4l2_ctrl_unlock(ctrl);
}
