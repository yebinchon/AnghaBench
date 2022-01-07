
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int vif; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int addr; int tdls; } ;


 int ARRAY_SIZE (int *) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ieee80211_sta*) ;
 int NL80211_TDLS_TEARDOWN ;
 int WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ;
 int ieee80211_tdls_oper_request (int ,int ,int ,int ,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

void iwl_mvm_teardown_tdls_peers(struct iwl_mvm *mvm)
{
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;
 int i;

 lockdep_assert_held(&mvm->mutex);

 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[i],
      lockdep_is_held(&mvm->mutex));
  if (!sta || IS_ERR(sta) || !sta->tdls)
   continue;

  mvmsta = iwl_mvm_sta_from_mac80211(sta);
  ieee80211_tdls_oper_request(mvmsta->vif, sta->addr,
    NL80211_TDLS_TEARDOWN,
    WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED,
    GFP_KERNEL);
 }
}
