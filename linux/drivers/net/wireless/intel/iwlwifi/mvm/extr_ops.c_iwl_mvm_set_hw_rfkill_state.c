
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int notif_wait; int status; int rfkill_safe_init_done; } ;


 int IWL_MVM_STATUS_HW_RFKILL ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int READ_ONCE (int ) ;
 int clear_bit (int ,int *) ;
 int iwl_abort_notification_waits (int *) ;
 int iwl_mvm_has_unified_ucode (struct iwl_mvm*) ;
 int iwl_mvm_set_rfkill_state (struct iwl_mvm*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static bool iwl_mvm_set_hw_rfkill_state(struct iwl_op_mode *op_mode, bool state)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 bool rfkill_safe_init_done = READ_ONCE(mvm->rfkill_safe_init_done);
 bool unified = iwl_mvm_has_unified_ucode(mvm);

 if (state)
  set_bit(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);
 else
  clear_bit(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);

 iwl_mvm_set_rfkill_state(mvm);


 if (rfkill_safe_init_done)
  iwl_abort_notification_waits(&mvm->notif_wait);





 if (unified)
  return 0;





 return state && rfkill_safe_init_done;
}
