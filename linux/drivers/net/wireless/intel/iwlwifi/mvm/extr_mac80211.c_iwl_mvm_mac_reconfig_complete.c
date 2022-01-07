
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_reconfig_type { ____Placeholder_ieee80211_reconfig_type } ieee80211_reconfig_type ;




 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_restart_complete (struct iwl_mvm*) ;

__attribute__((used)) static void
iwl_mvm_mac_reconfig_complete(struct ieee80211_hw *hw,
         enum ieee80211_reconfig_type reconfig_type)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 switch (reconfig_type) {
 case 129:
  iwl_mvm_restart_complete(mvm);
  break;
 case 128:
  break;
 }
}
