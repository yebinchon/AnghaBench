
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IRQ_TYPE_EDGE_FALLING ;
 unsigned int TC6393XB_NR_IRQS ;
 int handle_edge_irq ;
 int irq_clear_status_flags (unsigned int,int) ;
 int irq_set_chained_handler_and_data (int ,int ,struct tc6393xb*) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct tc6393xb*) ;
 int irq_set_irq_type (int ,int ) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int tc6393xb_chip ;
 int tc6393xb_irq ;

__attribute__((used)) static void tc6393xb_attach_irq(struct platform_device *dev)
{
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = tc6393xb->irq_base;

 for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
  irq_set_chip_and_handler(irq, &tc6393xb_chip, handle_edge_irq);
  irq_set_chip_data(irq, tc6393xb);
  irq_clear_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
 }

 irq_set_irq_type(tc6393xb->irq, IRQ_TYPE_EDGE_FALLING);
 irq_set_chained_handler_and_data(tc6393xb->irq, tc6393xb_irq,
      tc6393xb);
}
