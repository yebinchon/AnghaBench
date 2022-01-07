
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isr_statistics {int unhandled; int tx; int rx; int wakeup; int sw; int ctkill; int alive; int sch; int hw; } ;
struct iwl_trans_pcie {int inta_mask; int ucode_write_complete; int irq_lock; int ucode_write_waitq; int rxq; int use_ict; struct isr_statistics isr_stats; } ;
struct iwl_trans {int sync_cmd_lockdep_map; int status; TYPE_1__* trans_cfg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ gen2; } ;


 int CSR_FH_INT_RX_MASK ;
 int CSR_FH_INT_STATUS ;
 int CSR_FH_INT_TX_MASK ;
 int CSR_INT ;
 int CSR_INT_BIT_ALIVE ;
 int CSR_INT_BIT_CT_KILL ;
 int CSR_INT_BIT_FH_RX ;
 int CSR_INT_BIT_FH_TX ;
 int CSR_INT_BIT_HW_ERR ;
 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_BIT_RX_PERIODIC ;
 int CSR_INT_BIT_SCD ;
 int CSR_INT_BIT_SW_ERR ;
 int CSR_INT_BIT_SW_RX ;
 int CSR_INT_BIT_WAKEUP ;
 int CSR_INT_MASK ;
 int CSR_INT_PERIODIC_DIS ;
 int CSR_INT_PERIODIC_ENA ;
 int CSR_INT_PERIODIC_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,...) ;
 int IWL_DL_ISR ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*,int) ;
 int STATUS_INT_ENABLED ;
 int _iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_fw_load_int (struct iwl_trans*) ;
 int iwl_enable_fw_load_int_ctx_info (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_pcie_handle_rfkill_irq (struct iwl_trans*) ;
 int iwl_pcie_int_cause_ict (struct iwl_trans*) ;
 int iwl_pcie_int_cause_non_ict (struct iwl_trans*) ;
 int iwl_pcie_irq_handle_error (struct iwl_trans*) ;
 int iwl_pcie_rx_handle (struct iwl_trans*,int ) ;
 int iwl_pcie_rxmq_restock (struct iwl_trans*,int ) ;
 int iwl_pcie_rxq_check_wrptr (struct iwl_trans*) ;
 int iwl_pcie_txq_check_wrptrs (struct iwl_trans*) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int iwl_write8 (struct iwl_trans*,int ,int ) ;
 scalar_t__ likely (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

irqreturn_t iwl_pcie_irq_handler(int irq, void *dev_id)
{
 struct iwl_trans *trans = dev_id;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
 u32 inta = 0;
 u32 handled = 0;

 lock_map_acquire(&trans->sync_cmd_lockdep_map);

 spin_lock(&trans_pcie->irq_lock);




 if (likely(trans_pcie->use_ict))
  inta = iwl_pcie_int_cause_ict(trans);
 else
  inta = iwl_pcie_int_cause_non_ict(trans);

 if (iwl_have_debug_level(IWL_DL_ISR)) {
  IWL_DEBUG_ISR(trans,
         "ISR inta 0x%08x, enabled 0x%08x(sw), enabled(hw) 0x%08x, fh 0x%08x\n",
         inta, trans_pcie->inta_mask,
         iwl_read32(trans, CSR_INT_MASK),
         iwl_read32(trans, CSR_FH_INT_STATUS));
  if (inta & (~trans_pcie->inta_mask))
   IWL_DEBUG_ISR(trans,
          "We got a masked interrupt (0x%08x)\n",
          inta & (~trans_pcie->inta_mask));
 }

 inta &= trans_pcie->inta_mask;






 if (unlikely(!inta)) {
  IWL_DEBUG_ISR(trans, "Ignore interrupt, inta == 0\n");




  if (test_bit(STATUS_INT_ENABLED, &trans->status))
   _iwl_enable_interrupts(trans);
  spin_unlock(&trans_pcie->irq_lock);
  lock_map_release(&trans->sync_cmd_lockdep_map);
  return IRQ_NONE;
 }

 if (unlikely(inta == 0xFFFFFFFF || (inta & 0xFFFFFFF0) == 0xa5a5a5a0)) {




  IWL_WARN(trans, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
  spin_unlock(&trans_pcie->irq_lock);
  goto out;
 }
 iwl_write32(trans, CSR_INT, inta | ~trans_pcie->inta_mask);

 if (iwl_have_debug_level(IWL_DL_ISR))
  IWL_DEBUG_ISR(trans, "inta 0x%08x, enabled 0x%08x\n",
         inta, iwl_read32(trans, CSR_INT_MASK));

 spin_unlock(&trans_pcie->irq_lock);


 if (inta & CSR_INT_BIT_HW_ERR) {
  IWL_ERR(trans, "Hardware error detected.  Restarting.\n");


  iwl_disable_interrupts(trans);

  isr_stats->hw++;
  iwl_pcie_irq_handle_error(trans);

  handled |= CSR_INT_BIT_HW_ERR;

  goto out;
 }


 if (inta & CSR_INT_BIT_SCD) {
  IWL_DEBUG_ISR(trans,
         "Scheduler finished to transmit the frame/frames.\n");
  isr_stats->sch++;
 }


 if (inta & CSR_INT_BIT_ALIVE) {
  IWL_DEBUG_ISR(trans, "Alive interrupt\n");
  isr_stats->alive++;
  if (trans->trans_cfg->gen2) {




   iwl_pcie_rxmq_restock(trans, trans_pcie->rxq);
  }

  handled |= CSR_INT_BIT_ALIVE;
 }


 inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);


 if (inta & CSR_INT_BIT_RF_KILL) {
  iwl_pcie_handle_rfkill_irq(trans);
  handled |= CSR_INT_BIT_RF_KILL;
 }


 if (inta & CSR_INT_BIT_CT_KILL) {
  IWL_ERR(trans, "Microcode CT kill error detected.\n");
  isr_stats->ctkill++;
  handled |= CSR_INT_BIT_CT_KILL;
 }


 if (inta & CSR_INT_BIT_SW_ERR) {
  IWL_ERR(trans, "Microcode SW error detected. "
   " Restarting 0x%X.\n", inta);
  isr_stats->sw++;
  iwl_pcie_irq_handle_error(trans);
  handled |= CSR_INT_BIT_SW_ERR;
 }


 if (inta & CSR_INT_BIT_WAKEUP) {
  IWL_DEBUG_ISR(trans, "Wakeup interrupt\n");
  iwl_pcie_rxq_check_wrptr(trans);
  iwl_pcie_txq_check_wrptrs(trans);

  isr_stats->wakeup++;

  handled |= CSR_INT_BIT_WAKEUP;
 }




 if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX |
      CSR_INT_BIT_RX_PERIODIC)) {
  IWL_DEBUG_ISR(trans, "Rx interrupt\n");
  if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
   handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
   iwl_write32(trans, CSR_FH_INT_STATUS,
     CSR_FH_INT_RX_MASK);
  }
  if (inta & CSR_INT_BIT_RX_PERIODIC) {
   handled |= CSR_INT_BIT_RX_PERIODIC;
   iwl_write32(trans,
    CSR_INT, CSR_INT_BIT_RX_PERIODIC);
  }
  iwl_write8(trans, CSR_INT_PERIODIC_REG,
       CSR_INT_PERIODIC_DIS);
  if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX))
   iwl_write8(trans, CSR_INT_PERIODIC_REG,
       CSR_INT_PERIODIC_ENA);

  isr_stats->rx++;

  local_bh_disable();
  iwl_pcie_rx_handle(trans, 0);
  local_bh_enable();
 }


 if (inta & CSR_INT_BIT_FH_TX) {
  iwl_write32(trans, CSR_FH_INT_STATUS, CSR_FH_INT_TX_MASK);
  IWL_DEBUG_ISR(trans, "uCode load interrupt\n");
  isr_stats->tx++;
  handled |= CSR_INT_BIT_FH_TX;

  trans_pcie->ucode_write_complete = 1;
  wake_up(&trans_pcie->ucode_write_waitq);
 }

 if (inta & ~handled) {
  IWL_ERR(trans, "Unhandled INTA bits 0x%08x\n", inta & ~handled);
  isr_stats->unhandled++;
 }

 if (inta & ~(trans_pcie->inta_mask)) {
  IWL_WARN(trans, "Disabled INTA bits 0x%08x were pending\n",
    inta & ~trans_pcie->inta_mask);
 }

 spin_lock(&trans_pcie->irq_lock);

 if (test_bit(STATUS_INT_ENABLED, &trans->status))
  _iwl_enable_interrupts(trans);

 else if (handled & CSR_INT_BIT_FH_TX)
  iwl_enable_fw_load_int(trans);

 else if (handled & CSR_INT_BIT_RF_KILL)
  iwl_enable_rfkill_int(trans);

 else if (handled & (CSR_INT_BIT_ALIVE | CSR_INT_BIT_FH_RX))
  iwl_enable_fw_load_int_ctx_info(trans);
 spin_unlock(&trans_pcie->irq_lock);

out:
 lock_map_release(&trans->sync_cmd_lockdep_map);
 return IRQ_HANDLED;
}
