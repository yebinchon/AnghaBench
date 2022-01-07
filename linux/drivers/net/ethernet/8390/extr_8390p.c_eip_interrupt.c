
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int __ei_interrupt (int,void*) ;

irqreturn_t eip_interrupt(int irq, void *dev_id)
{
 return __ei_interrupt(irq, dev_id);
}
