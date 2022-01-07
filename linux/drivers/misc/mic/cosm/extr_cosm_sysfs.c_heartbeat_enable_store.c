
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {int sysfs_heartbeat_enable; scalar_t__ state; int heartbeat_watchdog_enable; int cosm_mutex; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ MIC_ONLINE ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t
heartbeat_enable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 int enable;
 int ret;

 if (!cdev)
  return -EINVAL;

 mutex_lock(&cdev->cosm_mutex);
 ret = kstrtoint(buf, 10, &enable);
 if (ret)
  goto unlock;

 cdev->sysfs_heartbeat_enable = enable;

 if (cdev->state == MIC_ONLINE)
  cdev->heartbeat_watchdog_enable = enable;
 ret = count;
unlock:
 mutex_unlock(&cdev->cosm_mutex);
 return ret;
}
