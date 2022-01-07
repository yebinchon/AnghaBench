
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int system_pm_mode; } ;
struct iwl_mvm {int fwrt; struct iwl_trans* trans; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_PLAT_PM_MODE_D3 ;
 int __iwl_mvm_suspend (struct ieee80211_hw*,struct cfg80211_wowlan*,int) ;
 int iwl_fw_runtime_suspend (int *) ;
 int iwl_mvm_pause_tcm (struct iwl_mvm*,int) ;
 int iwl_trans_suspend (struct iwl_trans*) ;

int iwl_mvm_suspend(struct ieee80211_hw *hw, struct cfg80211_wowlan *wowlan)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_trans *trans = mvm->trans;
 int ret;

 iwl_mvm_pause_tcm(mvm, 1);

 iwl_fw_runtime_suspend(&mvm->fwrt);

 ret = iwl_trans_suspend(trans);
 if (ret)
  return ret;

 trans->system_pm_mode = IWL_PLAT_PM_MODE_D3;

 return __iwl_mvm_suspend(hw, wowlan, 0);
}
