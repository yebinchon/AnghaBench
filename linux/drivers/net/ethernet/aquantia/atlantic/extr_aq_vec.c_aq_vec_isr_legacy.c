
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_3__ {unsigned int vec_idx; } ;
struct aq_vec_s {int aq_hw; TYPE_2__* aq_hw_ops; int napi; TYPE_1__ aq_ring_param; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* hw_irq_read ) (int ,unsigned int*) ;int (* hw_irq_enable ) (int ,unsigned int) ;int (* hw_irq_disable ) (int ,unsigned int) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int napi_schedule (int *) ;
 int stub1 (int ,unsigned int*) ;
 int stub2 (int ,unsigned int) ;
 int stub3 (int ,unsigned int) ;

irqreturn_t aq_vec_isr_legacy(int irq, void *private)
{
 struct aq_vec_s *self = private;
 u64 irq_mask = 0U;
 int err;

 if (!self)
  return IRQ_NONE;
 err = self->aq_hw_ops->hw_irq_read(self->aq_hw, &irq_mask);
 if (err < 0)
  return IRQ_NONE;

 if (irq_mask) {
  self->aq_hw_ops->hw_irq_disable(self->aq_hw,
         1U << self->aq_ring_param.vec_idx);
  napi_schedule(&self->napi);
 } else {
  self->aq_hw_ops->hw_irq_enable(self->aq_hw, 1U);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
