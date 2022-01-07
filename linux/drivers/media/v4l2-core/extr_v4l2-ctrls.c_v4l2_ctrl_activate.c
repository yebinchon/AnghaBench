
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int flags; } ;


 int V4L2_EVENT_CTRL_CH_FLAGS ;
 int send_event (int *,struct v4l2_ctrl*,int ) ;
 int test_and_clear_bit (int,int *) ;
 int test_and_set_bit (int,int *) ;

void v4l2_ctrl_activate(struct v4l2_ctrl *ctrl, bool active)
{

 bool inactive = !active;
 bool old;

 if (ctrl == ((void*)0))
  return;

 if (inactive)

  old = test_and_set_bit(4, &ctrl->flags);
 else

  old = test_and_clear_bit(4, &ctrl->flags);
 if (old != inactive)
  send_event(((void*)0), ctrl, V4L2_EVENT_CTRL_CH_FLAGS);
}
