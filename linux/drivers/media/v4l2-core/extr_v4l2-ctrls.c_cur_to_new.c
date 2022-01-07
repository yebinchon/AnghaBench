
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int p_new; int p_cur; } ;


 int ptr_to_ptr (struct v4l2_ctrl*,int ,int ) ;

__attribute__((used)) static void cur_to_new(struct v4l2_ctrl *ctrl)
{
 if (ctrl == ((void*)0))
  return;
 ptr_to_ptr(ctrl, ctrl->p_cur, ctrl->p_new);
}
