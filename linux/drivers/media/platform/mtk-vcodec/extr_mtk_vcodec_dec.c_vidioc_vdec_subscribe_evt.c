
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int type; } ;




 int v4l2_ctrl_subscribe_event (struct v4l2_fh*,struct v4l2_event_subscription const*) ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*,int,int *) ;
 int v4l2_src_change_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*) ;

__attribute__((used)) static int vidioc_vdec_subscribe_evt(struct v4l2_fh *fh,
         const struct v4l2_event_subscription *sub)
{
 switch (sub->type) {
 case 129:
  return v4l2_event_subscribe(fh, sub, 2, ((void*)0));
 case 128:
  return v4l2_src_change_event_subscribe(fh, sub);
 default:
  return v4l2_ctrl_subscribe_event(fh, sub);
 }
}
