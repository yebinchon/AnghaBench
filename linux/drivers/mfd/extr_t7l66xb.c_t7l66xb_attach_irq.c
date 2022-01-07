
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t7l66xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 unsigned int T7L66XB_NR_IRQS ;
 int handle_level_irq ;
 int irq_set_chained_handler_and_data (int ,int ,struct t7l66xb*) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct t7l66xb*) ;
 int irq_set_irq_type (int ,int ) ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int t7l66xb_chip ;
 int t7l66xb_irq ;

__attribute__((used)) static void t7l66xb_attach_irq(struct platform_device *dev)
{
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = t7l66xb->irq_base;

 for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {
  irq_set_chip_and_handler(irq, &t7l66xb_chip, handle_level_irq);
  irq_set_chip_data(irq, t7l66xb);
 }

 irq_set_irq_type(t7l66xb->irq, IRQ_TYPE_EDGE_FALLING);
 irq_set_chained_handler_and_data(t7l66xb->irq, t7l66xb_irq, t7l66xb);
}
