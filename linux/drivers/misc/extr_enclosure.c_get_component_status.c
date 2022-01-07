
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enclosure_device {TYPE_1__* cb; } ;
struct enclosure_component {size_t status; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_status ) (struct enclosure_device*,struct enclosure_component*) ;} ;


 char** enclosure_status ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (struct enclosure_device*,struct enclosure_component*) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;
 struct enclosure_device* to_enclosure_device (int ) ;

__attribute__((used)) static ssize_t get_component_status(struct device *cdev,
        struct device_attribute *attr,char *buf)
{
 struct enclosure_device *edev = to_enclosure_device(cdev->parent);
 struct enclosure_component *ecomp = to_enclosure_component(cdev);

 if (edev->cb->get_status)
  edev->cb->get_status(edev, ecomp);
 return snprintf(buf, 40, "%s\n", enclosure_status[ecomp->status]);
}
