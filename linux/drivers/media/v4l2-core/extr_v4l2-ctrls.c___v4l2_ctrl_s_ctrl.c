
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int val; int is_int; TYPE_1__* handler; } ;
typedef int s32 ;
struct TYPE_2__ {int lock; } ;


 int WARN_ON (int) ;
 int lockdep_assert_held (int ) ;
 int set_ctrl (int *,struct v4l2_ctrl*,int ) ;

int __v4l2_ctrl_s_ctrl(struct v4l2_ctrl *ctrl, s32 val)
{
 lockdep_assert_held(ctrl->handler->lock);


 WARN_ON(!ctrl->is_int);
 ctrl->val = val;
 return set_ctrl(((void*)0), ctrl, 0);
}
