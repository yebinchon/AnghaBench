
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct msix_entry {int dummy; } ;
struct isr_statistics {int hw; int ctkill; int sw; int wakeup; int alive; int tx; } ;
struct iwl_trans_pcie {int fh_mask; int shared_vec_mask; int ucode_write_complete; int hw_mask; int sx_complete; int sx_waitq; TYPE_2__* prph_info; int rxq; int ucode_write_waitq; int irq_lock; struct isr_statistics isr_stats; struct iwl_trans* trans; } ;
struct TYPE_6__ {int hw_error; } ;
struct iwl_trans {int sync_cmd_lockdep_map; TYPE_3__ dbg; TYPE_1__* trans_cfg; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int sleep_notif; } ;
struct TYPE_4__ {scalar_t__ device_family; scalar_t__ gen2; } ;


 int CSR_IML_RESP_ADDR ;
 int CSR_MSIX_FH_INT_CAUSES_AD ;
 int CSR_MSIX_FH_INT_MASK_AD ;
 int CSR_MSIX_HW_INT_CAUSES_AD ;
 int CSR_MSIX_HW_INT_MASK_AD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IWL_D3_SLEEP_STATUS_RESUME ;
 int IWL_D3_SLEEP_STATUS_SUSPEND ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,...) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 int IWL_DL_ISR ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 int IWL_IMAGE_RESP_FAIL ;
 int IWL_SHARED_IRQ_FIRST_RSS ;
 int IWL_SHARED_IRQ_NON_RX ;
 int MSIX_FH_INT_CAUSES_D2S_CH0_NUM ;
 int MSIX_FH_INT_CAUSES_FH_ERR ;
 int MSIX_FH_INT_CAUSES_Q0 ;
 int MSIX_FH_INT_CAUSES_Q1 ;
 int MSIX_HW_INT_CAUSES_REG_ALIVE ;
 int MSIX_HW_INT_CAUSES_REG_CT_KILL ;
 int MSIX_HW_INT_CAUSES_REG_HW_ERR ;
 int MSIX_HW_INT_CAUSES_REG_IML ;
 int MSIX_HW_INT_CAUSES_REG_IPC ;
 int MSIX_HW_INT_CAUSES_REG_RF_KILL ;
 int MSIX_HW_INT_CAUSES_REG_SW_ERR ;
 int MSIX_HW_INT_CAUSES_REG_SW_ERR_V2 ;
 int MSIX_HW_INT_CAUSES_REG_WAKEUP ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_pcie_clear_irq (struct iwl_trans*,struct msix_entry*) ;
 struct iwl_trans_pcie* iwl_pcie_get_trans_pcie (struct msix_entry*) ;
 int iwl_pcie_handle_rfkill_irq (struct iwl_trans*) ;
 int iwl_pcie_irq_handle_error (struct iwl_trans*) ;
 int iwl_pcie_rx_handle (struct iwl_trans*,int) ;
 int iwl_pcie_rxmq_restock (struct iwl_trans*,int ) ;
 int iwl_pcie_rxq_check_wrptr (struct iwl_trans*) ;
 int iwl_pcie_txq_check_wrptrs (struct iwl_trans*) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int le32_to_cpu (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_iwlwifi_dev_irq_msix (int ,struct msix_entry*,int,int,int) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

irqreturn_t iwl_pcie_irq_msix_handler(int irq, void *dev_id)
{
 struct msix_entry *entry = dev_id;
 struct iwl_trans_pcie *trans_pcie = iwl_pcie_get_trans_pcie(entry);
 struct iwl_trans *trans = trans_pcie->trans;
 struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
 u32 inta_fh, inta_hw;

 lock_map_acquire(&trans->sync_cmd_lockdep_map);

 spin_lock(&trans_pcie->irq_lock);
 inta_fh = iwl_read32(trans, CSR_MSIX_FH_INT_CAUSES_AD);
 inta_hw = iwl_read32(trans, CSR_MSIX_HW_INT_CAUSES_AD);



 iwl_write32(trans, CSR_MSIX_FH_INT_CAUSES_AD, inta_fh);
 iwl_write32(trans, CSR_MSIX_HW_INT_CAUSES_AD, inta_hw);
 spin_unlock(&trans_pcie->irq_lock);

 trace_iwlwifi_dev_irq_msix(trans->dev, entry, 1, inta_fh, inta_hw);

 if (unlikely(!(inta_fh | inta_hw))) {
  IWL_DEBUG_ISR(trans, "Ignore interrupt, inta == 0\n");
  lock_map_release(&trans->sync_cmd_lockdep_map);
  return IRQ_NONE;
 }

 if (iwl_have_debug_level(IWL_DL_ISR)) {
  IWL_DEBUG_ISR(trans,
         "ISR inta_fh 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\n",
         inta_fh, trans_pcie->fh_mask,
         iwl_read32(trans, CSR_MSIX_FH_INT_MASK_AD));
  if (inta_fh & ~trans_pcie->fh_mask)
   IWL_DEBUG_ISR(trans,
          "We got a masked interrupt (0x%08x)\n",
          inta_fh & ~trans_pcie->fh_mask);
 }

 inta_fh &= trans_pcie->fh_mask;

 if ((trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_NON_RX) &&
     inta_fh & MSIX_FH_INT_CAUSES_Q0) {
  local_bh_disable();
  iwl_pcie_rx_handle(trans, 0);
  local_bh_enable();
 }

 if ((trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS) &&
     inta_fh & MSIX_FH_INT_CAUSES_Q1) {
  local_bh_disable();
  iwl_pcie_rx_handle(trans, 1);
  local_bh_enable();
 }


 if (inta_fh & MSIX_FH_INT_CAUSES_D2S_CH0_NUM) {
  IWL_DEBUG_ISR(trans, "uCode load interrupt\n");
  isr_stats->tx++;




  trans_pcie->ucode_write_complete = 1;
  wake_up(&trans_pcie->ucode_write_waitq);
 }


 if ((inta_fh & MSIX_FH_INT_CAUSES_FH_ERR) ||
     (inta_hw & MSIX_HW_INT_CAUSES_REG_SW_ERR) ||
     (inta_hw & MSIX_HW_INT_CAUSES_REG_SW_ERR_V2)) {
  IWL_ERR(trans,
   "Microcode SW error detected. Restarting 0x%X.\n",
   inta_fh);
  isr_stats->sw++;
  iwl_pcie_irq_handle_error(trans);
 }


 if (iwl_have_debug_level(IWL_DL_ISR)) {
  IWL_DEBUG_ISR(trans,
         "ISR inta_hw 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\n",
         inta_hw, trans_pcie->hw_mask,
         iwl_read32(trans, CSR_MSIX_HW_INT_MASK_AD));
  if (inta_hw & ~trans_pcie->hw_mask)
   IWL_DEBUG_ISR(trans,
          "We got a masked interrupt 0x%08x\n",
          inta_hw & ~trans_pcie->hw_mask);
 }

 inta_hw &= trans_pcie->hw_mask;


 if (inta_hw & MSIX_HW_INT_CAUSES_REG_ALIVE) {
  IWL_DEBUG_ISR(trans, "Alive interrupt\n");
  isr_stats->alive++;
  if (trans->trans_cfg->gen2) {

   iwl_pcie_rxmq_restock(trans, trans_pcie->rxq);
  }
 }

 if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_22560 &&
     inta_hw & MSIX_HW_INT_CAUSES_REG_IPC) {

  int res = iwl_read32(trans, CSR_IML_RESP_ADDR);

  IWL_DEBUG_ISR(trans, "IML transfer status: %d\n", res);
  if (res == IWL_IMAGE_RESP_FAIL) {
   isr_stats->sw++;
   iwl_pcie_irq_handle_error(trans);
  }
 } else if (inta_hw & MSIX_HW_INT_CAUSES_REG_WAKEUP) {
  u32 sleep_notif =
   le32_to_cpu(trans_pcie->prph_info->sleep_notif);
  if (sleep_notif == IWL_D3_SLEEP_STATUS_SUSPEND ||
      sleep_notif == IWL_D3_SLEEP_STATUS_RESUME) {
   IWL_DEBUG_ISR(trans,
          "Sx interrupt: sleep notification = 0x%x\n",
          sleep_notif);
   trans_pcie->sx_complete = 1;
   wake_up(&trans_pcie->sx_waitq);
  } else {

   IWL_DEBUG_ISR(trans, "Wakeup interrupt\n");
   iwl_pcie_rxq_check_wrptr(trans);
   iwl_pcie_txq_check_wrptrs(trans);

   isr_stats->wakeup++;
  }
 }

 if (inta_hw & MSIX_HW_INT_CAUSES_REG_IML) {

  int res = iwl_read32(trans, CSR_IML_RESP_ADDR);

  IWL_DEBUG_ISR(trans, "IML transfer status: %d\n", res);
  if (res == IWL_IMAGE_RESP_FAIL) {
   isr_stats->sw++;
   iwl_pcie_irq_handle_error(trans);
  }
 }


 if (inta_hw & MSIX_HW_INT_CAUSES_REG_CT_KILL) {
  IWL_ERR(trans, "Microcode CT kill error detected.\n");
  isr_stats->ctkill++;
 }


 if (inta_hw & MSIX_HW_INT_CAUSES_REG_RF_KILL)
  iwl_pcie_handle_rfkill_irq(trans);

 if (inta_hw & MSIX_HW_INT_CAUSES_REG_HW_ERR) {
  IWL_ERR(trans,
   "Hardware error detected. Restarting.\n");

  isr_stats->hw++;
  trans->dbg.hw_error = 1;
  iwl_pcie_irq_handle_error(trans);
 }

 iwl_pcie_clear_irq(trans, entry);

 lock_map_release(&trans->sync_cmd_lockdep_map);

 return IRQ_HANDLED;
}
