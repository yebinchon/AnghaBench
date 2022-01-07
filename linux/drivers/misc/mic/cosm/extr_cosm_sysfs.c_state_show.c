
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {size_t state; } ;
typedef int ssize_t ;


 int EINVAL ;
 size_t MIC_LAST ;
 int PAGE_SIZE ;
 int * cosm_state_string ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
state_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);

 if (!cdev || cdev->state >= MIC_LAST)
  return -EINVAL;

 return scnprintf(buf, PAGE_SIZE, "%s\n",
  cosm_state_string[cdev->state]);
}
