
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * p_s64; } ;
struct v4l2_ctrl {scalar_t__ type; TYPE_2__ p_new; scalar_t__ is_ptr; TYPE_1__* handler; } ;
typedef int s64 ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ V4L2_CTRL_TYPE_INTEGER64 ;
 int WARN_ON (int) ;
 int lockdep_assert_held (int ) ;
 int set_ctrl (int *,struct v4l2_ctrl*,int ) ;

int __v4l2_ctrl_s_ctrl_int64(struct v4l2_ctrl *ctrl, s64 val)
{
 lockdep_assert_held(ctrl->handler->lock);


 WARN_ON(ctrl->is_ptr || ctrl->type != V4L2_CTRL_TYPE_INTEGER64);
 *ctrl->p_new.p_s64 = val;
 return set_ctrl(((void*)0), ctrl, 0);
}
