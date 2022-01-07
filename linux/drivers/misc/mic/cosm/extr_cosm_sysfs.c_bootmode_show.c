
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {char* bootmode; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
bootmode_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 char *bootmode;

 if (!cdev)
  return -EINVAL;

 bootmode = cdev->bootmode;

 if (bootmode)
  return scnprintf(buf, PAGE_SIZE, "%s\n", bootmode);
 return 0;
}
