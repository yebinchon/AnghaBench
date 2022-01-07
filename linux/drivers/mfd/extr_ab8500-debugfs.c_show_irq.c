
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int* irq_count ;
 unsigned long irq_first ;
 int kstrtoul (int ,int ,unsigned long*) ;
 unsigned int num_irqs ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_irq(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 unsigned long name;
 unsigned int irq_index;
 int err;

 err = kstrtoul(attr->attr.name, 0, &name);
 if (err)
  return err;

 irq_index = name - irq_first;
 if (irq_index >= num_irqs)
  return -EINVAL;

 return sprintf(buf, "%u\n", irq_count[irq_index]);
}
