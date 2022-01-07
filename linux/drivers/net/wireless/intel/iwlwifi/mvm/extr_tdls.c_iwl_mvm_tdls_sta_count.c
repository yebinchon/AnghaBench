
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int tdls; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct ieee80211_sta*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

int iwl_mvm_tdls_sta_count(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;
 int count = 0;
 int i;

 lockdep_assert_held(&mvm->mutex);

 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[i],
      lockdep_is_held(&mvm->mutex));
  if (!sta || IS_ERR(sta) || !sta->tdls)
   continue;

  if (vif) {
   mvmsta = iwl_mvm_sta_from_mac80211(sta);
   if (mvmsta->vif != vif)
    continue;
  }

  count++;
 }

 return count;
}
