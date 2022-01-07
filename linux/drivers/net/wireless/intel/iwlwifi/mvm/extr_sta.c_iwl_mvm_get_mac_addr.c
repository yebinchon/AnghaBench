
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {size_t* addr; } ;


 scalar_t__ IWL_MVM_INVALID_STA ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline u8 *iwl_mvm_get_mac_addr(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           struct ieee80211_sta *sta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (sta)
  return sta->addr;

 if (vif->type == NL80211_IFTYPE_STATION &&
     mvmvif->ap_sta_id != IWL_MVM_INVALID_STA) {
  u8 sta_id = mvmvif->ap_sta_id;
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
      lockdep_is_held(&mvm->mutex));
  return sta->addr;
 }


 return ((void*)0);
}
