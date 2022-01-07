
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int * name; struct device* dev; int ref; int prio; int lock; int subdevs; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dev_get_drvdata (struct device*) ;
 char* dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct v4l2_device*) ;
 int get_device (struct device*) ;
 int kref_init (int *) ;
 int snprintf (int *,int,char*,char*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_prio_init (int *) ;

int v4l2_device_register(struct device *dev, struct v4l2_device *v4l2_dev)
{
 if (v4l2_dev == ((void*)0))
  return -EINVAL;

 INIT_LIST_HEAD(&v4l2_dev->subdevs);
 spin_lock_init(&v4l2_dev->lock);
 v4l2_prio_init(&v4l2_dev->prio);
 kref_init(&v4l2_dev->ref);
 get_device(dev);
 v4l2_dev->dev = dev;
 if (dev == ((void*)0)) {

  if (WARN_ON(!v4l2_dev->name[0]))
   return -EINVAL;
  return 0;
 }


 if (!v4l2_dev->name[0])
  snprintf(v4l2_dev->name, sizeof(v4l2_dev->name), "%s %s",
   dev->driver->name, dev_name(dev));
 if (!dev_get_drvdata(dev))
  dev_set_drvdata(dev, v4l2_dev);
 return 0;
}
