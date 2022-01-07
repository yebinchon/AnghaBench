
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mei_device {int dev_state; TYPE_1__ cdev; } ;
struct device {int kobj; } ;
typedef enum mei_dev_state { ____Placeholder_mei_dev_state } mei_dev_state ;


 struct device* class_find_device_by_devt (int ,int ) ;
 int mei_class ;
 int put_device (struct device*) ;
 int sysfs_notify (int *,int *,char*) ;

void mei_set_devstate(struct mei_device *dev, enum mei_dev_state state)
{
 struct device *clsdev;

 if (dev->dev_state == state)
  return;

 dev->dev_state = state;

 clsdev = class_find_device_by_devt(mei_class, dev->cdev.dev);
 if (clsdev) {
  sysfs_notify(&clsdev->kobj, ((void*)0), "dev_state");
  put_device(clsdev);
 }
}
