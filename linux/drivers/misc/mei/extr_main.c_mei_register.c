
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int owner; } ;
struct mei_device {TYPE_2__ cdev; int minor; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_5__ {int owner; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int cdev_add (TYPE_2__*,int,int) ;
 int cdev_del (TYPE_2__*) ;
 int cdev_init (TYPE_2__*,int *) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int dev_name (struct device*) ;
 struct device* device_create_with_groups (int ,struct device*,int,struct mei_device*,int ,char*,int ) ;
 int mei_class ;
 int mei_dbgfs_register (struct mei_device*,int ) ;
 int mei_devt ;
 int mei_fops ;
 int mei_groups ;
 int mei_minor_free (struct mei_device*) ;
 int mei_minor_get (struct mei_device*) ;

int mei_register(struct mei_device *dev, struct device *parent)
{
 struct device *clsdev;
 int ret, devno;

 ret = mei_minor_get(dev);
 if (ret < 0)
  return ret;


 devno = MKDEV(MAJOR(mei_devt), dev->minor);
 cdev_init(&dev->cdev, &mei_fops);
 dev->cdev.owner = parent->driver->owner;


 ret = cdev_add(&dev->cdev, devno, 1);
 if (ret) {
  dev_err(parent, "unable to add device %d:%d\n",
   MAJOR(mei_devt), dev->minor);
  goto err_dev_add;
 }

 clsdev = device_create_with_groups(mei_class, parent, devno,
        dev, mei_groups,
        "mei%d", dev->minor);

 if (IS_ERR(clsdev)) {
  dev_err(parent, "unable to create device %d:%d\n",
   MAJOR(mei_devt), dev->minor);
  ret = PTR_ERR(clsdev);
  goto err_dev_create;
 }

 mei_dbgfs_register(dev, dev_name(clsdev));

 return 0;

err_dev_create:
 cdev_del(&dev->cdev);
err_dev_add:
 mei_minor_free(dev);
 return ret;
}
