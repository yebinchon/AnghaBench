
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {char* ramdisk; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
ramdisk_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 char *ramdisk;

 if (!cdev)
  return -EINVAL;

 ramdisk = cdev->ramdisk;

 if (ramdisk)
  return scnprintf(buf, PAGE_SIZE, "%s\n", ramdisk);
 return 0;
}
