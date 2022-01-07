
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 unsigned int TC6393XB_NR_IRQS ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 int irq_set_chip (unsigned int,int *) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int irq_set_status_flags (unsigned int,int) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void tc6393xb_detach_irq(struct platform_device *dev)
{
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_set_chained_handler_and_data(tc6393xb->irq, ((void*)0), ((void*)0));

 irq_base = tc6393xb->irq_base;

 for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
  irq_set_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
  irq_set_chip(irq, ((void*)0));
  irq_set_chip_data(irq, ((void*)0));
 }
}
