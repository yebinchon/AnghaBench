
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int type; } ;


 int EINVAL ;


 int v4l2_ctrl_subdev_subscribe_event (struct v4l2_subdev*,struct v4l2_fh*,struct v4l2_event_subscription*) ;
 int v4l2_src_change_event_subdev_subscribe (struct v4l2_subdev*,struct v4l2_fh*,struct v4l2_event_subscription*) ;

__attribute__((used)) static int tda1997x_subscribe_event(struct v4l2_subdev *sd,
        struct v4l2_fh *fh,
        struct v4l2_event_subscription *sub)
{
 switch (sub->type) {
 case 128:
  return v4l2_src_change_event_subdev_subscribe(sd, fh, sub);
 case 129:
  return v4l2_ctrl_subdev_subscribe_event(sd, fh, sub);
 default:
  return -EINVAL;
 }
}
