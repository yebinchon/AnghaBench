
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
struct TYPE_2__ {int (* set_status ) (struct enclosure_device*,struct enclosure_component*,int) ;} ;


 size_t EINVAL ;
 scalar_t__* enclosure_status ;
 size_t strlen (scalar_t__) ;
 scalar_t__ strncmp (char const*,scalar_t__,size_t) ;
 int stub1 (struct enclosure_device*,struct enclosure_component*,int) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;
 struct enclosure_device* to_enclosure_device (int ) ;

__attribute__((used)) static ssize_t set_component_status(struct device *cdev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct enclosure_device *edev = to_enclosure_device(cdev->parent);
 struct enclosure_component *ecomp = to_enclosure_component(cdev);
 int i;

 for (i = 0; enclosure_status[i]; i++) {
  if (strncmp(buf, enclosure_status[i],
       strlen(enclosure_status[i])) == 0 &&
      (buf[strlen(enclosure_status[i])] == '\n' ||
       buf[strlen(enclosure_status[i])] == '\0'))
   break;
 }

 if (enclosure_status[i] && edev->cb->set_status) {
  edev->cb->set_status(edev, ecomp, i);
  return count;
 } else
  return -EINVAL;
}
