
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ct_kill_duration; } ;
struct iwl_mvm_tt_mgmt {int throttle; int dynamic_smps; int ct_kill_exit; TYPE_1__ params; } ;
struct iwl_mvm {int temperature_test; int status; struct iwl_mvm_tt_mgmt thermal_throttle; } ;


 int HZ ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_STATUS_HW_CTKILL ;
 int iwl_mvm_is_tt_in_fw (struct iwl_mvm*) ;
 int iwl_mvm_set_hw_ctkill_state (struct iwl_mvm*,int) ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void iwl_mvm_enter_ctkill(struct iwl_mvm *mvm)
{
 struct iwl_mvm_tt_mgmt *tt = &mvm->thermal_throttle;
 u32 duration = tt->params.ct_kill_duration;

 if (test_bit(IWL_MVM_STATUS_HW_CTKILL, &mvm->status))
  return;

 IWL_ERR(mvm, "Enter CT Kill\n");
 iwl_mvm_set_hw_ctkill_state(mvm, 1);

 if (!iwl_mvm_is_tt_in_fw(mvm)) {
  tt->throttle = 0;
  tt->dynamic_smps = 0;
 }





 if (!mvm->temperature_test)
  schedule_delayed_work(&tt->ct_kill_exit,
          round_jiffies_relative(duration * HZ));
}
