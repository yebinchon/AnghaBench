
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p_char; } ;
struct v4l2_ctrl {scalar_t__ type; scalar_t__ maximum; TYPE_2__ p_new; TYPE_1__* handler; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ V4L2_CTRL_TYPE_STRING ;
 int WARN_ON (int) ;
 int lockdep_assert_held (int ) ;
 int set_ctrl (int *,struct v4l2_ctrl*,int ) ;
 int strscpy (int ,char const*,scalar_t__) ;

int __v4l2_ctrl_s_ctrl_string(struct v4l2_ctrl *ctrl, const char *s)
{
 lockdep_assert_held(ctrl->handler->lock);


 WARN_ON(ctrl->type != V4L2_CTRL_TYPE_STRING);
 strscpy(ctrl->p_new.p_char, s, ctrl->maximum + 1);
 return set_ctrl(((void*)0), ctrl, 0);
}
