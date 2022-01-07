
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afu_irq {int private; int (* handler ) (int ) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (int ) ;
 int trace_ocxl_afu_irq_receive (int) ;

__attribute__((used)) static irqreturn_t afu_irq_handler(int virq, void *data)
{
 struct afu_irq *irq = (struct afu_irq *) data;

 trace_ocxl_afu_irq_receive(virq);

 if (irq->handler)
  return irq->handler(irq->private);

 return IRQ_HANDLED;
}
