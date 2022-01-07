
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enclosure_device {TYPE_1__* cb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* show_id ) (struct enclosure_device*,char*) ;} ;


 int EINVAL ;
 int stub1 (struct enclosure_device*,char*) ;
 struct enclosure_device* to_enclosure_device (struct device*) ;

__attribute__((used)) static ssize_t id_show(struct device *cdev,
     struct device_attribute *attr,
     char *buf)
{
 struct enclosure_device *edev = to_enclosure_device(cdev);

 if (edev->cb->show_id)
  return edev->cb->show_id(edev, buf);
 return -EINVAL;
}
