
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct ieee80211_sta* rcu_dereference (int ) ;

__attribute__((used)) static inline struct iwl_mvm_sta *
iwl_mvm_sta_from_staid_rcu(struct iwl_mvm *mvm, u8 sta_id)
{
 struct ieee80211_sta *sta;

 if (sta_id >= ARRAY_SIZE(mvm->fw_id_to_mac_id))
  return ((void*)0);

 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);


 if (IS_ERR_OR_NULL(sta))
  return ((void*)0);

 return iwl_mvm_sta_from_mac80211(sta);
}
