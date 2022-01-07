
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int * irq_count ;
 int irq_first ;
 unsigned int num_irqs ;
 int sprintf (char*,char*,int) ;
 int sysfs_notify (struct kobject*,int *,char*) ;

__attribute__((used)) static irqreturn_t ab8500_debug_handler(int irq, void *data)
{
 char buf[16];
 struct kobject *kobj = (struct kobject *)data;
 unsigned int irq_abb = irq - irq_first;

 if (irq_abb < num_irqs)
  irq_count[irq_abb]++;




 sprintf(buf, "%d", irq);
 sysfs_notify(kobj, ((void*)0), buf);

 return IRQ_HANDLED;
}
