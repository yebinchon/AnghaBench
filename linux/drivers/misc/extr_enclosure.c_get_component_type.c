
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_component {size_t type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** enclosure_type ;
 int snprintf (char*,int,char*,char*) ;
 struct enclosure_component* to_enclosure_component (struct device*) ;

__attribute__((used)) static ssize_t get_component_type(struct device *cdev,
      struct device_attribute *attr, char *buf)
{
 struct enclosure_component *ecomp = to_enclosure_component(cdev);

 return snprintf(buf, 40, "%s\n", enclosure_type[ecomp->type]);
}
