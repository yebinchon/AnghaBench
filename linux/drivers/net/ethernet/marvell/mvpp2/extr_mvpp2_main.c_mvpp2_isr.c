
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_queue_vector {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mvpp2_qvec_interrupt_disable (struct mvpp2_queue_vector*) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t mvpp2_isr(int irq, void *dev_id)
{
 struct mvpp2_queue_vector *qv = dev_id;

 mvpp2_qvec_interrupt_disable(qv);

 napi_schedule(&qv->napi);

 return IRQ_HANDLED;
}
