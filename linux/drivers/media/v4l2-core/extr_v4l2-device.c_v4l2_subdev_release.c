
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* internal_ops; struct module* owner; int owner_v4l2_dev; } ;
struct module {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct v4l2_subdev*) ;} ;


 int module_put (struct module*) ;
 int stub1 (struct v4l2_subdev*) ;

__attribute__((used)) static void v4l2_subdev_release(struct v4l2_subdev *sd)
{
 struct module *owner = !sd->owner_v4l2_dev ? sd->owner : ((void*)0);

 if (sd->internal_ops && sd->internal_ops->release)
  sd->internal_ops->release(sd);
 module_put(owner);
}
