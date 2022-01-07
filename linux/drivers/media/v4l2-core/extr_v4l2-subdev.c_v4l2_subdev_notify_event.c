
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int devnode; } ;
struct v4l2_event {int dummy; } ;


 int V4L2_DEVICE_NOTIFY_EVENT ;
 int v4l2_event_queue (int ,struct v4l2_event const*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,void*) ;

void v4l2_subdev_notify_event(struct v4l2_subdev *sd,
         const struct v4l2_event *ev)
{
 v4l2_event_queue(sd->devnode, ev);
 v4l2_subdev_notify(sd, V4L2_DEVICE_NOTIFY_EVENT, (void *)ev);
}
