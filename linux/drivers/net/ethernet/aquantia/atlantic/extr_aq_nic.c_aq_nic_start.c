
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct aq_vec_s {int dummy; } ;
struct TYPE_8__ {int link_irq_vec; scalar_t__ is_polling; } ;
struct TYPE_7__ {int count; int ar; } ;
struct aq_nic_s {unsigned int aq_vecs; int msix_entry_mask; TYPE_4__* ndev; int aq_hw; TYPE_3__* aq_hw_ops; TYPE_2__ aq_nic_cfg; int pdev; struct aq_vec_s** aq_vec; int polling_timer; int service_timer; int service_task; int packet_filter; TYPE_1__ mc_list; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int (* hw_multicast_list_set ) (int ,int ,int ) ;int (* hw_packet_filter_set ) (int ,int ) ;int (* hw_start ) (int ) ;int (* hw_irq_enable ) (int ,int ) ;} ;


 int AQ_CFG_IRQ_MASK ;
 scalar_t__ AQ_CFG_POLLING_TIMER_INTERVAL ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int aq_linkstate_threaded_isr ;
 int aq_nic_polling_timer_cb (int *) ;
 int aq_nic_service_task ;
 int aq_nic_service_timer_cb (int *) ;
 int aq_nic_update_interrupt_moderation_settings (struct aq_nic_s*) ;
 int aq_pci_func_alloc_irq (struct aq_nic_s*,unsigned int,int ,int ,struct aq_vec_s*,int ) ;
 int aq_vec_get_affinity_mask (struct aq_vec_s*) ;
 int aq_vec_isr ;
 int aq_vec_start (struct aq_vec_s*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_set_real_num_rx_queues (TYPE_4__*,unsigned int) ;
 int netif_set_real_num_tx_queues (TYPE_4__*,unsigned int) ;
 int netif_tx_start_all_queues (TYPE_4__*) ;
 int pci_irq_vector (int ,int) ;
 int request_threaded_irq (int,int *,int ,int,int ,struct aq_nic_s*) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ,int ) ;
 int timer_setup (int *,int (*) (int *),int ) ;

int aq_nic_start(struct aq_nic_s *self)
{
 struct aq_vec_s *aq_vec = ((void*)0);
 int err = 0;
 unsigned int i = 0U;

 err = self->aq_hw_ops->hw_multicast_list_set(self->aq_hw,
           self->mc_list.ar,
           self->mc_list.count);
 if (err < 0)
  goto err_exit;

 err = self->aq_hw_ops->hw_packet_filter_set(self->aq_hw,
          self->packet_filter);
 if (err < 0)
  goto err_exit;

 for (i = 0U, aq_vec = self->aq_vec[0];
  self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i]) {
  err = aq_vec_start(aq_vec);
  if (err < 0)
   goto err_exit;
 }

 err = self->aq_hw_ops->hw_start(self->aq_hw);
 if (err < 0)
  goto err_exit;

 err = aq_nic_update_interrupt_moderation_settings(self);
 if (err)
  goto err_exit;

 INIT_WORK(&self->service_task, aq_nic_service_task);

 timer_setup(&self->service_timer, aq_nic_service_timer_cb, 0);
 aq_nic_service_timer_cb(&self->service_timer);

 if (self->aq_nic_cfg.is_polling) {
  timer_setup(&self->polling_timer, aq_nic_polling_timer_cb, 0);
  mod_timer(&self->polling_timer, jiffies +
     AQ_CFG_POLLING_TIMER_INTERVAL);
 } else {
  for (i = 0U, aq_vec = self->aq_vec[0];
   self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i]) {
   err = aq_pci_func_alloc_irq(self, i, self->ndev->name,
          aq_vec_isr, aq_vec,
          aq_vec_get_affinity_mask(aq_vec));
   if (err < 0)
    goto err_exit;
  }

  if (self->aq_nic_cfg.link_irq_vec) {
   int irqvec = pci_irq_vector(self->pdev,
         self->aq_nic_cfg.link_irq_vec);
   err = request_threaded_irq(irqvec, ((void*)0),
         aq_linkstate_threaded_isr,
         IRQF_SHARED | IRQF_ONESHOT,
         self->ndev->name, self);
   if (err < 0)
    goto err_exit;
   self->msix_entry_mask |= (1 << self->aq_nic_cfg.link_irq_vec);
  }

  err = self->aq_hw_ops->hw_irq_enable(self->aq_hw,
           AQ_CFG_IRQ_MASK);
  if (err < 0)
   goto err_exit;
 }

 err = netif_set_real_num_tx_queues(self->ndev, self->aq_vecs);
 if (err < 0)
  goto err_exit;

 err = netif_set_real_num_rx_queues(self->ndev, self->aq_vecs);
 if (err < 0)
  goto err_exit;

 netif_tx_start_all_queues(self->ndev);

err_exit:
 return err;
}
