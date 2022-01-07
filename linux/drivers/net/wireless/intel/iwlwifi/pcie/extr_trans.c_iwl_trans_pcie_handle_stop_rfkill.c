
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int status; } ;


 int STATUS_RFKILL_HW ;
 int STATUS_RFKILL_OPMODE ;
 int clear_bit (int ,int *) ;
 int iwl_is_rfkill_set (struct iwl_trans*) ;
 int iwl_trans_pcie_rf_kill (struct iwl_trans*,int) ;
 int set_bit (int ,int *) ;

void iwl_trans_pcie_handle_stop_rfkill(struct iwl_trans *trans,
           bool was_in_rfkill)
{
 bool hw_rfkill;
 hw_rfkill = iwl_is_rfkill_set(trans);
 if (hw_rfkill) {
  set_bit(STATUS_RFKILL_HW, &trans->status);
  set_bit(STATUS_RFKILL_OPMODE, &trans->status);
 } else {
  clear_bit(STATUS_RFKILL_HW, &trans->status);
  clear_bit(STATUS_RFKILL_OPMODE, &trans->status);
 }
 if (hw_rfkill != was_in_rfkill)
  iwl_trans_pcie_rf_kill(trans, hw_rfkill);
}
