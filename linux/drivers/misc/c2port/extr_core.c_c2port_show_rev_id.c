
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {int name; int dev; int mutex; int access; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EBUSY ;
 scalar_t__ __c2port_show_rev_id (struct c2port_device*,char*) ;
 int dev_err (int ,char*,int ) ;
 struct c2port_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t c2port_show_rev_id(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);
 ssize_t ret;


 if (!c2dev->access)
  return -EBUSY;

 mutex_lock(&c2dev->mutex);
 ret = __c2port_show_rev_id(c2dev, buf);
 mutex_unlock(&c2dev->mutex);

 if (ret < 0)
  dev_err(c2dev->dev, "cannot read from %s\n", c2dev->name);

 return ret;
}
