
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int flags; TYPE_1__* handler; } ;
struct TYPE_2__ {int lock; } ;


 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int lockdep_assert_held (int ) ;
 int send_event (int *,struct v4l2_ctrl*,int ) ;
 int test_and_clear_bit (int,int *) ;
 int test_and_set_bit (int,int *) ;

void __v4l2_ctrl_grab(struct v4l2_ctrl *ctrl, bool grabbed)
{
 bool old;

 if (ctrl == ((void*)0))
  return;

 lockdep_assert_held(ctrl->handler->lock);

 if (grabbed)

  old = test_and_set_bit(1, &ctrl->flags);
 else

  old = test_and_clear_bit(1, &ctrl->flags);
 if (old != grabbed)
  send_event(((void*)0), ctrl, V4L2_EVENT_CTRL_CH_FLAGS);
}
