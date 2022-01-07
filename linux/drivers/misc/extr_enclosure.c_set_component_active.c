
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
struct TYPE_2__ {int (* set_active ) (struct enclosure_device*,struct enclosure_component*,int) ;} ;


 int simple_strtoul (char const*,int *,int ) ;
 int stub1 (struct enclosure_device*,struct enclosure_component*,int) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;
 struct enclosure_device* to_enclosure_device (int ) ;

__attribute__((used)) static ssize_t set_component_active(struct device *cdev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct enclosure_device *edev = to_enclosure_device(cdev->parent);
 struct enclosure_component *ecomp = to_enclosure_component(cdev);
 int val = simple_strtoul(buf, ((void*)0), 0);

 if (edev->cb->set_active)
  edev->cb->set_active(edev, ecomp, val);
 return count;
}
