
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {int p_cur; } ;


 int ptr_to_user (struct v4l2_ext_control*,struct v4l2_ctrl*,int ) ;

__attribute__((used)) static int cur_to_user(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl)
{
 return ptr_to_user(c, ctrl, ctrl->p_cur);
}
