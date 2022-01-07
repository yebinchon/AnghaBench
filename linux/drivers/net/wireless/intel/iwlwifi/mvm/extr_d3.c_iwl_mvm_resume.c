
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int fwrt; TYPE_1__* trans; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int system_pm_mode; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_PLAT_PM_MODE_DISABLED ;
 int iwl_fw_runtime_resume (int *) ;
 int iwl_mvm_resume_d3 (struct iwl_mvm*) ;
 int iwl_mvm_resume_tcm (struct iwl_mvm*) ;

int iwl_mvm_resume(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 ret = iwl_mvm_resume_d3(mvm);

 mvm->trans->system_pm_mode = IWL_PLAT_PM_MODE_DISABLED;

 iwl_mvm_resume_tcm(mvm);

 iwl_fw_runtime_resume(&mvm->fwrt);

 return ret;
}
