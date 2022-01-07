
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl {int p_new; } ;


 int user_to_ptr (struct v4l2_ext_control*,struct v4l2_ctrl*,int ) ;

__attribute__((used)) static int user_to_new(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl)
{
 return user_to_ptr(c, ctrl, ctrl->p_new);
}
