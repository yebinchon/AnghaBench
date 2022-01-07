
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t7l66xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 unsigned int T7L66XB_NR_IRQS ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;
 int irq_set_chip (unsigned int,int *) ;
 int irq_set_chip_data (unsigned int,int *) ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void t7l66xb_detach_irq(struct platform_device *dev)
{
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = t7l66xb->irq_base;

 irq_set_chained_handler_and_data(t7l66xb->irq, ((void*)0), ((void*)0));

 for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {
  irq_set_chip(irq, ((void*)0));
  irq_set_chip_data(irq, ((void*)0));
 }
}
