
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aq_vec_s {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_polling; } ;
struct aq_nic_s {unsigned int aq_vecs; int aq_hw; TYPE_2__* aq_hw_ops; struct aq_vec_s** aq_vec; int polling_timer; TYPE_1__ aq_nic_cfg; int service_task; int service_timer; int ndev; } ;
struct TYPE_4__ {int (* hw_stop ) (int ) ;int (* hw_irq_disable ) (int ,int ) ;} ;


 int AQ_CFG_IRQ_MASK ;
 int aq_pci_func_free_irqs (struct aq_nic_s*) ;
 int aq_vec_stop (struct aq_vec_s*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;

int aq_nic_stop(struct aq_nic_s *self)
{
 struct aq_vec_s *aq_vec = ((void*)0);
 unsigned int i = 0U;

 netif_tx_disable(self->ndev);
 netif_carrier_off(self->ndev);

 del_timer_sync(&self->service_timer);
 cancel_work_sync(&self->service_task);

 self->aq_hw_ops->hw_irq_disable(self->aq_hw, AQ_CFG_IRQ_MASK);

 if (self->aq_nic_cfg.is_polling)
  del_timer_sync(&self->polling_timer);
 else
  aq_pci_func_free_irqs(self);

 for (i = 0U, aq_vec = self->aq_vec[0];
  self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
  aq_vec_stop(aq_vec);

 return self->aq_hw_ops->hw_stop(self->aq_hw);
}
