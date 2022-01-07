
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int dev; int slice; TYPE_1__* adapter; } ;
struct cdev {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int adapter_num; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int cdev_add (struct cdev*,int ,int) ;
 int cdev_del (struct cdev*) ;
 int cdev_init (struct cdev*,struct file_operations const*) ;
 int cxl_class ;
 int dev_err (int *,char*,char*,int) ;
 struct device* device_create (int ,int *,int ,struct cxl_afu*,char*,int ,int ,char*) ;

__attribute__((used)) static int cxl_add_chardev(struct cxl_afu *afu, dev_t devt, struct cdev *cdev,
      struct device **chardev, char *postfix, char *desc,
      const struct file_operations *fops)
{
 struct device *dev;
 int rc;

 cdev_init(cdev, fops);
 if ((rc = cdev_add(cdev, devt, 1))) {
  dev_err(&afu->dev, "Unable to add %s chardev: %i\n", desc, rc);
  return rc;
 }

 dev = device_create(cxl_class, &afu->dev, devt, afu,
   "afu%i.%i%s", afu->adapter->adapter_num, afu->slice, postfix);
 if (IS_ERR(dev)) {
  dev_err(&afu->dev, "Unable to create %s chardev in sysfs: %i\n", desc, rc);
  rc = PTR_ERR(dev);
  goto err;
 }

 *chardev = dev;

 return 0;
err:
 cdev_del(cdev);
 return rc;
}
