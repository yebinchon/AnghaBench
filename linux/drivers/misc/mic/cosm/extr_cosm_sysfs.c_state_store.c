
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int cosm_reset (struct cosm_device*) ;
 int cosm_shutdown (struct cosm_device*) ;
 int cosm_start (struct cosm_device*) ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t
state_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 int rc;

 if (!cdev)
  return -EINVAL;

 if (sysfs_streq(buf, "boot")) {
  rc = cosm_start(cdev);
  goto done;
 }
 if (sysfs_streq(buf, "reset")) {
  rc = cosm_reset(cdev);
  goto done;
 }

 if (sysfs_streq(buf, "shutdown")) {
  rc = cosm_shutdown(cdev);
  goto done;
 }
 rc = -EINVAL;
done:
 if (rc)
  count = rc;
 return count;
}
