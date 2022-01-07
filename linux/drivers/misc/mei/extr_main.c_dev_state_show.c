
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev_state; int device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum mei_dev_state { ____Placeholder_mei_dev_state } mei_dev_state ;


 struct mei_device* dev_get_drvdata (struct device*) ;
 char* mei_dev_state_str (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t dev_state_show(struct device *device,
         struct device_attribute *attr, char *buf)
{
 struct mei_device *dev = dev_get_drvdata(device);
 enum mei_dev_state dev_state;

 mutex_lock(&dev->device_lock);
 dev_state = dev->dev_state;
 mutex_unlock(&dev->device_lock);

 return sprintf(buf, "%s", mei_dev_state_str(dev_state));
}
