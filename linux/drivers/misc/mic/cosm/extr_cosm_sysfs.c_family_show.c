
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {TYPE_1__* hw_ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* family ) (struct cosm_device*,char*) ;} ;


 int EINVAL ;
 struct cosm_device* dev_get_drvdata (struct device*) ;
 int stub1 (struct cosm_device*,char*) ;

__attribute__((used)) static ssize_t
family_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cosm_device *cdev = dev_get_drvdata(dev);

 if (!cdev)
  return -EINVAL;

 return cdev->hw_ops->family(cdev, buf);
}
