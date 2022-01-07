
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_component {int slot; int number; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,int) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;

__attribute__((used)) static ssize_t get_component_slot(struct device *cdev,
      struct device_attribute *attr, char *buf)
{
 struct enclosure_component *ecomp = to_enclosure_component(cdev);
 int slot;


 if (ecomp->slot >= 0)
  slot = ecomp->slot;
 else
  slot = ecomp->number;

 return snprintf(buf, 40, "%d\n", slot);
}
