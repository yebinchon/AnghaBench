
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {size_t sta_id; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOENT ;
 int ERR_PTR (int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sta* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int ) ;

__attribute__((used)) static void iwl_mvm_sta_pre_rcu_remove(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_sta *sta)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 mutex_lock(&mvm->mutex);
 if (sta == rcu_access_pointer(mvm->fw_id_to_mac_id[mvm_sta->sta_id]))
  rcu_assign_pointer(mvm->fw_id_to_mac_id[mvm_sta->sta_id],
       ERR_PTR(-ENOENT));

 mutex_unlock(&mvm->mutex);
}
