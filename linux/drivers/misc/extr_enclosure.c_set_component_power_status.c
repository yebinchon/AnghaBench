
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enclosure_device {TYPE_1__* cb; } ;
struct enclosure_component {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_power_status ) (struct enclosure_device*,struct enclosure_component*,int) ;} ;


 size_t EINVAL ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (struct enclosure_device*,struct enclosure_component*,int) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;
 struct enclosure_device* to_enclosure_device (int ) ;

__attribute__((used)) static ssize_t set_component_power_status(struct device *cdev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct enclosure_device *edev = to_enclosure_device(cdev->parent);
 struct enclosure_component *ecomp = to_enclosure_component(cdev);
 int val;

 if (strncmp(buf, "on", 2) == 0 &&
     (buf[2] == '\n' || buf[2] == '\0'))
  val = 1;
 else if (strncmp(buf, "off", 3) == 0 &&
     (buf[3] == '\n' || buf[3] == '\0'))
  val = 0;
 else
  return -EINVAL;

 if (edev->cb->set_power_status)
  edev->cb->set_power_status(edev, ecomp, val);
 return count;
}
