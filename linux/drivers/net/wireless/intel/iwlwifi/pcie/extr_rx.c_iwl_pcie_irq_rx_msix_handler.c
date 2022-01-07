
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int entry; } ;
struct iwl_trans_pcie {struct iwl_trans* trans; } ;
struct iwl_trans {int sync_cmd_lockdep_map; int num_rx_queues; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ WARN_ON (int) ;
 int iwl_pcie_clear_irq (struct iwl_trans*,struct msix_entry*) ;
 struct iwl_trans_pcie* iwl_pcie_get_trans_pcie (struct msix_entry*) ;
 int iwl_pcie_rx_handle (struct iwl_trans*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int trace_iwlwifi_dev_irq_msix (int ,struct msix_entry*,int,int ,int ) ;

irqreturn_t iwl_pcie_irq_rx_msix_handler(int irq, void *dev_id)
{
 struct msix_entry *entry = dev_id;
 struct iwl_trans_pcie *trans_pcie = iwl_pcie_get_trans_pcie(entry);
 struct iwl_trans *trans = trans_pcie->trans;

 trace_iwlwifi_dev_irq_msix(trans->dev, entry, 0, 0, 0);

 if (WARN_ON(entry->entry >= trans->num_rx_queues))
  return IRQ_NONE;

 lock_map_acquire(&trans->sync_cmd_lockdep_map);

 local_bh_disable();
 iwl_pcie_rx_handle(trans, entry->entry);
 local_bh_enable();

 iwl_pcie_clear_irq(trans, entry);

 lock_map_release(&trans->sync_cmd_lockdep_map);

 return IRQ_HANDLED;
}
