
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_vif {struct ieee80211_tx_queue_params* queue_params; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_conf_tx(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif, u16 ac,
          const struct ieee80211_tx_queue_params *params)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 mvmvif->queue_params[ac] = *params;





 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
  int ret;

  mutex_lock(&mvm->mutex);
  ret = iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
  mutex_unlock(&mvm->mutex);
  return ret;
 }
 return 0;
}
