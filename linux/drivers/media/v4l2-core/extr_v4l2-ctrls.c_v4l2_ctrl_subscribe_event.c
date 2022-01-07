
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ V4L2_EVENT_CTRL ;
 int v4l2_ctrl_sub_ev_ops ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*,int ,int *) ;

int v4l2_ctrl_subscribe_event(struct v4l2_fh *fh,
    const struct v4l2_event_subscription *sub)
{
 if (sub->type == V4L2_EVENT_CTRL)
  return v4l2_event_subscribe(fh, sub, 0, &v4l2_ctrl_sub_ev_ops);
 return -EINVAL;
}
