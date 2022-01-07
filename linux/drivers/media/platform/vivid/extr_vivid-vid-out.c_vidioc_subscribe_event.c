
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {TYPE_1__* vdev; } ;
struct v4l2_event_subscription {int type; } ;
struct TYPE_2__ {int vfl_dir; } ;


 int EINVAL ;

 int VFL_DIR_RX ;
 int v4l2_ctrl_subscribe_event (struct v4l2_fh*,struct v4l2_event_subscription const*) ;
 int v4l2_src_change_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*) ;

int vidioc_subscribe_event(struct v4l2_fh *fh,
   const struct v4l2_event_subscription *sub)
{
 switch (sub->type) {
 case 128:
  if (fh->vdev->vfl_dir == VFL_DIR_RX)
   return v4l2_src_change_event_subscribe(fh, sub);
  break;
 default:
  return v4l2_ctrl_subscribe_event(fh, sub);
 }
 return -EINVAL;
}
