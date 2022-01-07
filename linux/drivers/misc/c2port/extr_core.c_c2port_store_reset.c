
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct c2port_device {int mutex; scalar_t__ flash_access; int access; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 int c2port_reset (struct c2port_device*) ;
 struct c2port_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t c2port_store_reset(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct c2port_device *c2dev = dev_get_drvdata(dev);


 if (!c2dev->access)
  return -EBUSY;

 mutex_lock(&c2dev->mutex);

 c2port_reset(c2dev);
 c2dev->flash_access = 0;

 mutex_unlock(&c2dev->mutex);

 return count;
}
