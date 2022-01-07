
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int type; } ;


 int EINVAL ;

 int uvc_ctrl_sub_ev_ops ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*,int ,int *) ;

__attribute__((used)) static int uvc_ioctl_subscribe_event(struct v4l2_fh *fh,
         const struct v4l2_event_subscription *sub)
{
 switch (sub->type) {
 case 128:
  return v4l2_event_subscribe(fh, sub, 0, &uvc_ctrl_sub_ev_ops);
 default:
  return -EINVAL;
 }
}
