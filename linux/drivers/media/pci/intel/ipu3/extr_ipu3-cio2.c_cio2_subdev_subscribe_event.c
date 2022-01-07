
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {scalar_t__ type; scalar_t__ id; } ;


 int EINVAL ;
 scalar_t__ V4L2_EVENT_FRAME_SYNC ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription*,int ,int *) ;

__attribute__((used)) static int cio2_subdev_subscribe_event(struct v4l2_subdev *sd,
           struct v4l2_fh *fh,
           struct v4l2_event_subscription *sub)
{
 if (sub->type != V4L2_EVENT_FRAME_SYNC)
  return -EINVAL;


 if (sub->id != 0)
  return -EINVAL;

 return v4l2_event_subscribe(fh, sub, 0, ((void*)0));
}
