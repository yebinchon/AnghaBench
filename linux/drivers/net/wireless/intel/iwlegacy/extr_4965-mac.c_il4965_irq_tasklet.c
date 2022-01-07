
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int unhandled; int tx; int rx; int wakeup; int sw; int ctkill; int rfkill; int alive; int sch; int hw; } ;
struct TYPE_5__ {int max_txq_num; } ;
struct il_priv {int ucode_write_complete; int inta_mask; int status; TYPE_3__ isr_stats; int wait_command_queue; int * txq; TYPE_2__ hw_params; int rxq; TYPE_1__* hw; int lock; } ;
struct TYPE_4__ {int wiphy; } ;


 int CSR49_FH_INT_RX_MASK ;
 int CSR49_FH_INT_TX_MASK ;
 int CSR_FH_INT_STATUS ;
 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ;
 int CSR_INT ;
 int CSR_INT_BIT_ALIVE ;
 int CSR_INT_BIT_CT_KILL ;
 int CSR_INT_BIT_FH_RX ;
 int CSR_INT_BIT_FH_TX ;
 int CSR_INT_BIT_HW_ERR ;
 int CSR_INT_BIT_RF_KILL ;
 int CSR_INT_BIT_SCD ;
 int CSR_INT_BIT_SW_ERR ;
 int CSR_INT_BIT_SW_RX ;
 int CSR_INT_BIT_WAKEUP ;
 int CSR_INT_MASK ;
 int D_ISR (char*,...) ;
 int IL_DL_ISR ;
 int IL_ERR (char*,...) ;
 int IL_WARN (char*,...) ;
 int S_INT_ENABLED ;
 int S_RFKILL ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int clear_bit (int ,int *) ;
 int il4965_rx_handle (struct il_priv*) ;
 int il_disable_interrupts (struct il_priv*) ;
 int il_enable_interrupts (struct il_priv*) ;
 int il_enable_rfkill_int (struct il_priv*) ;
 int il_force_reset (struct il_priv*,int) ;
 int il_get_debug_level (struct il_priv*) ;
 int il_irq_handle_error (struct il_priv*) ;
 int il_rx_queue_update_write_ptr (struct il_priv*,int *) ;
 int il_txq_update_write_ptr (struct il_priv*,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void
il4965_irq_tasklet(struct il_priv *il)
{
 u32 inta, handled = 0;
 u32 inta_fh;
 unsigned long flags;
 u32 i;




 spin_lock_irqsave(&il->lock, flags);




 inta = _il_rd(il, CSR_INT);
 _il_wr(il, CSR_INT, inta);




 inta_fh = _il_rd(il, CSR_FH_INT_STATUS);
 _il_wr(il, CSR_FH_INT_STATUS, inta_fh);
 spin_unlock_irqrestore(&il->lock, flags);





 if (inta_fh & CSR49_FH_INT_RX_MASK)
  inta |= CSR_INT_BIT_FH_RX;
 if (inta_fh & CSR49_FH_INT_TX_MASK)
  inta |= CSR_INT_BIT_FH_TX;


 if (inta & CSR_INT_BIT_HW_ERR) {
  IL_ERR("Hardware error detected.  Restarting.\n");


  il_disable_interrupts(il);

  il->isr_stats.hw++;
  il_irq_handle_error(il);

  handled |= CSR_INT_BIT_HW_ERR;

  return;
 }
 inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);


 if (inta & CSR_INT_BIT_RF_KILL) {
  int hw_rf_kill = 0;

  if (!(_il_rd(il, CSR_GP_CNTRL) & CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW))
   hw_rf_kill = 1;

  IL_WARN("RF_KILL bit toggled to %s.\n",
   hw_rf_kill ? "disable radio" : "enable radio");

  il->isr_stats.rfkill++;






  if (hw_rf_kill) {
   set_bit(S_RFKILL, &il->status);
  } else {
   clear_bit(S_RFKILL, &il->status);
   il_force_reset(il, 1);
  }
  wiphy_rfkill_set_hw_state(il->hw->wiphy, hw_rf_kill);

  handled |= CSR_INT_BIT_RF_KILL;
 }


 if (inta & CSR_INT_BIT_CT_KILL) {
  IL_ERR("Microcode CT kill error detected.\n");
  il->isr_stats.ctkill++;
  handled |= CSR_INT_BIT_CT_KILL;
 }


 if (inta & CSR_INT_BIT_SW_ERR) {
  IL_ERR("Microcode SW error detected. " " Restarting 0x%X.\n",
         inta);
  il->isr_stats.sw++;
  il_irq_handle_error(il);
  handled |= CSR_INT_BIT_SW_ERR;
 }






 if (inta & CSR_INT_BIT_WAKEUP) {
  D_ISR("Wakeup interrupt\n");
  il_rx_queue_update_write_ptr(il, &il->rxq);
  for (i = 0; i < il->hw_params.max_txq_num; i++)
   il_txq_update_write_ptr(il, &il->txq[i]);
  il->isr_stats.wakeup++;
  handled |= CSR_INT_BIT_WAKEUP;
 }




 if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
  il4965_rx_handle(il);
  il->isr_stats.rx++;
  handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
 }


 if (inta & CSR_INT_BIT_FH_TX) {
  D_ISR("uCode load interrupt\n");
  il->isr_stats.tx++;
  handled |= CSR_INT_BIT_FH_TX;

  il->ucode_write_complete = 1;
  wake_up(&il->wait_command_queue);
 }

 if (inta & ~handled) {
  IL_ERR("Unhandled INTA bits 0x%08x\n", inta & ~handled);
  il->isr_stats.unhandled++;
 }

 if (inta & ~(il->inta_mask)) {
  IL_WARN("Disabled INTA bits 0x%08x were pending\n",
   inta & ~il->inta_mask);
  IL_WARN("   with FH49_INT = 0x%08x\n", inta_fh);
 }



 if (test_bit(S_INT_ENABLED, &il->status))
  il_enable_interrupts(il);

 else if (handled & CSR_INT_BIT_RF_KILL)
  il_enable_rfkill_int(il);
}
