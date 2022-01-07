
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct c2port_device {int name; int dev; int mutex; int flash_access; int access; } ;
struct bin_attribute {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ EBUSY ;
 scalar_t__ __c2port_read_flash_data (struct c2port_device*,char*,int ,size_t) ;
 int dev_err (int ,char*,int ) ;
 struct c2port_device* dev_get_drvdata (int ) ;
 int kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t c2port_read_flash_data(struct file *filp, struct kobject *kobj,
    struct bin_attribute *attr,
    char *buffer, loff_t offset, size_t count)
{
 struct c2port_device *c2dev = dev_get_drvdata(kobj_to_dev(kobj));
 ssize_t ret;


 if (!c2dev->access || !c2dev->flash_access)
  return -EBUSY;

 mutex_lock(&c2dev->mutex);
 ret = __c2port_read_flash_data(c2dev, buffer, offset, count);
 mutex_unlock(&c2dev->mutex);

 if (ret < 0)
  dev_err(c2dev->dev, "cannot read %s flash\n", c2dev->name);

 return ret;
}
