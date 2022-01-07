
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct media_entity {int dummy; } ;
struct v4l2_subdev {int owner_v4l2_dev; scalar_t__ owner; struct v4l2_device* v4l2_dev; int list; TYPE_3__* internal_ops; int ctrl_handler; int * name; struct media_entity entity; } ;
struct v4l2_device {int lock; int subdevs; scalar_t__ mdev; int ctrl_handler; TYPE_2__* dev; } ;
struct TYPE_6__ {int (* registered ) (struct v4l2_subdev*) ;} ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {scalar_t__ owner; } ;


 int EINVAL ;
 int ENODEV ;
 int list_add_tail (int *,int *) ;
 int media_device_register_entity (scalar_t__,struct media_entity*) ;
 int media_device_unregister_entity (struct media_entity*) ;
 int module_put (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct v4l2_subdev*) ;
 int try_module_get (scalar_t__) ;
 int v4l2_ctrl_add_handler (int ,int ,int *,int) ;

int v4l2_device_register_subdev(struct v4l2_device *v4l2_dev,
    struct v4l2_subdev *sd)
{



 int err;


 if (!v4l2_dev || !sd || sd->v4l2_dev || !sd->name[0])
  return -EINVAL;
 sd->owner_v4l2_dev = v4l2_dev->dev && v4l2_dev->dev->driver &&
  sd->owner == v4l2_dev->dev->driver->owner;

 if (!sd->owner_v4l2_dev && !try_module_get(sd->owner))
  return -ENODEV;

 sd->v4l2_dev = v4l2_dev;

 err = v4l2_ctrl_add_handler(v4l2_dev->ctrl_handler, sd->ctrl_handler,
        ((void*)0), 1);
 if (err)
  goto error_module;
 if (sd->internal_ops && sd->internal_ops->registered) {
  err = sd->internal_ops->registered(sd);
  if (err)
   goto error_unregister;
 }

 spin_lock(&v4l2_dev->lock);
 list_add_tail(&sd->list, &v4l2_dev->subdevs);
 spin_unlock(&v4l2_dev->lock);

 return 0;

error_unregister:



error_module:
 if (!sd->owner_v4l2_dev)
  module_put(sd->owner);
 sd->v4l2_dev = ((void*)0);
 return err;
}
