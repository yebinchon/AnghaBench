
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isr_statistics {int rfkill; } ;
struct iwl_trans_pcie {scalar_t__ opmode_down; int wait_command_queue; int mutex; struct isr_statistics isr_stats; } ;
struct iwl_trans {int status; } ;


 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*,char*) ;
 int STATUS_RFKILL_HW ;
 int STATUS_RFKILL_OPMODE ;
 int STATUS_SYNC_HCMD_ACTIVE ;
 int clear_bit (int ,int *) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_trans_pcie_rf_kill (struct iwl_trans*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

void iwl_pcie_handle_rfkill_irq(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
 bool hw_rfkill, prev, report;

 mutex_lock(&trans_pcie->mutex);
 prev = test_bit(STATUS_RFKILL_OPMODE, &trans->status);
 hw_rfkill = iwl_is_rfkill_set(trans);
 if (hw_rfkill) {
  set_bit(STATUS_RFKILL_OPMODE, &trans->status);
  set_bit(STATUS_RFKILL_HW, &trans->status);
 }
 if (trans_pcie->opmode_down)
  report = hw_rfkill;
 else
  report = test_bit(STATUS_RFKILL_OPMODE, &trans->status);

 IWL_WARN(trans, "RF_KILL bit toggled to %s.\n",
   hw_rfkill ? "disable radio" : "enable radio");

 isr_stats->rfkill++;

 if (prev != report)
  iwl_trans_pcie_rf_kill(trans, report);
 mutex_unlock(&trans_pcie->mutex);

 if (hw_rfkill) {
  if (test_and_clear_bit(STATUS_SYNC_HCMD_ACTIVE,
           &trans->status))
   IWL_DEBUG_RF_KILL(trans,
       "Rfkill while SYNC HCMD in flight\n");
  wake_up(&trans_pcie->wait_command_queue);
 } else {
  clear_bit(STATUS_RFKILL_HW, &trans->status);
  if (trans_pcie->opmode_down)
   clear_bit(STATUS_RFKILL_OPMODE, &trans->status);
 }
}
