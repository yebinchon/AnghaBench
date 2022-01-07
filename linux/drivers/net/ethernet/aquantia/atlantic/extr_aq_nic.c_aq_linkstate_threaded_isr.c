
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link_irq_vec; } ;
struct aq_nic_s {TYPE_2__ aq_nic_cfg; int aq_hw; TYPE_1__* aq_hw_ops; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int (* hw_irq_enable ) (int ,int ) ;} ;


 int BIT (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int aq_nic_update_link_status (struct aq_nic_s*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static irqreturn_t aq_linkstate_threaded_isr(int irq, void *private)
{
 struct aq_nic_s *self = private;

 if (!self)
  return IRQ_NONE;

 aq_nic_update_link_status(self);

 self->aq_hw_ops->hw_irq_enable(self->aq_hw,
           BIT(self->aq_nic_cfg.link_irq_vec));
 return IRQ_HANDLED;
}
