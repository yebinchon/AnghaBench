
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {scalar_t__ devnode; int entity; struct v4l2_device* v4l2_dev; TYPE_1__* internal_ops; int list; } ;
struct v4l2_device {scalar_t__ mdev; int lock; } ;
struct TYPE_2__ {int (* unregistered ) (struct v4l2_subdev*) ;} ;


 int list_del (int *) ;
 int media_device_unregister_entity (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct v4l2_subdev*) ;
 int v4l2_subdev_release (struct v4l2_subdev*) ;
 int video_unregister_device (scalar_t__) ;

void v4l2_device_unregister_subdev(struct v4l2_subdev *sd)
{
 struct v4l2_device *v4l2_dev;


 if (sd == ((void*)0) || sd->v4l2_dev == ((void*)0))
  return;

 v4l2_dev = sd->v4l2_dev;

 spin_lock(&v4l2_dev->lock);
 list_del(&sd->list);
 spin_unlock(&v4l2_dev->lock);

 if (sd->internal_ops && sd->internal_ops->unregistered)
  sd->internal_ops->unregistered(sd);
 sd->v4l2_dev = ((void*)0);
 if (sd->devnode)
  video_unregister_device(sd->devnode);
 else
  v4l2_subdev_release(sd);
}
