
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_mvm_sta {int sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int mfp; } ;
struct ieee80211_key_conf {int flags; int hw_key_idx; } ;


 int CMD_ASYNC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct iwl_mvm_sta* iwl_mvm_get_key_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_send_sta_key (struct iwl_mvm*,int ,struct ieee80211_key_conf*,int,int ,int *,int ,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void iwl_mvm_update_tkip_key(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        struct ieee80211_key_conf *keyconf,
        struct ieee80211_sta *sta, u32 iv32,
        u16 *phase1key)
{
 struct iwl_mvm_sta *mvm_sta;
 bool mcast = !(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE);
 bool mfp = sta ? sta->mfp : 0;

 rcu_read_lock();

 mvm_sta = iwl_mvm_get_key_sta(mvm, vif, sta);
 if (WARN_ON_ONCE(!mvm_sta))
  goto unlock;
 iwl_mvm_send_sta_key(mvm, mvm_sta->sta_id, keyconf, mcast,
        iv32, phase1key, CMD_ASYNC, keyconf->hw_key_idx,
        mfp);

 unlock:
 rcu_read_unlock();
}
