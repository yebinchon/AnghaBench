
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int idle; } ;


 int BSS_CHANGED_IDLE ;
 int BSS_CHANGED_MU_GROUPS ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_SCAN_SCHED ;




 int WARN_ON_ONCE (int) ;
 int iwl_mvm_bss_info_changed_ap_ibss (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int iwl_mvm_bss_info_changed_station (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int iwl_mvm_scan_stop (struct iwl_mvm*,int ,int) ;
 int iwl_mvm_update_mu_groups (struct iwl_mvm*,struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_bss_info_changed(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *bss_conf,
         u32 changes)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 mutex_lock(&mvm->mutex);

 if (changes & BSS_CHANGED_IDLE && !bss_conf->idle)
  iwl_mvm_scan_stop(mvm, IWL_MVM_SCAN_SCHED, 1);

 switch (vif->type) {
 case 128:
  iwl_mvm_bss_info_changed_station(mvm, vif, bss_conf, changes);
  break;
 case 130:
 case 131:
  iwl_mvm_bss_info_changed_ap_ibss(mvm, vif, bss_conf, changes);
  break;
 case 129:
  if (changes & BSS_CHANGED_MU_GROUPS)
   iwl_mvm_update_mu_groups(mvm, vif);
  break;
 default:

  WARN_ON_ONCE(1);
 }

 mutex_unlock(&mvm->mutex);
}
