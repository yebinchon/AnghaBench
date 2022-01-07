
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_mvm {scalar_t__ beacon_inject_active; int hw; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int WARN_ON (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get_template (int ,struct ieee80211_vif*,int *) ;
 int iwl_mvm_mac_ctxt_send_beacon (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ;

int iwl_mvm_mac_ctxt_beacon_changed(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif)
{
 struct sk_buff *beacon;
 int ret;

 WARN_ON(vif->type != NL80211_IFTYPE_AP &&
  vif->type != NL80211_IFTYPE_ADHOC);

 beacon = ieee80211_beacon_get_template(mvm->hw, vif, ((void*)0));
 if (!beacon)
  return -ENOMEM;






 ret = iwl_mvm_mac_ctxt_send_beacon(mvm, vif, beacon);
 dev_kfree_skb(beacon);
 return ret;
}
