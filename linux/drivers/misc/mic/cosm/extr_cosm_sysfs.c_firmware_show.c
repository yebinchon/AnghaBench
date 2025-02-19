
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {char* firmware; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
firmware_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);
 char *firmware;

 if (!cdev)
  return -EINVAL;

 firmware = cdev->firmware;

 if (firmware)
  return scnprintf(buf, PAGE_SIZE, "%s\n", firmware);
 return 0;
}
