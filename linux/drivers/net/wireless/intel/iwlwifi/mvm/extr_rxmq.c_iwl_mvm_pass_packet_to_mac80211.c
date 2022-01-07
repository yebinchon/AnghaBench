
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_sta {int dummy; } ;


 int ieee80211_rx_napi (int ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ;
 scalar_t__ iwl_mvm_check_pn (struct iwl_mvm*,struct sk_buff*,int,struct ieee80211_sta*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void iwl_mvm_pass_packet_to_mac80211(struct iwl_mvm *mvm,
         struct napi_struct *napi,
         struct sk_buff *skb, int queue,
         struct ieee80211_sta *sta,
         bool csi)
{
 if (iwl_mvm_check_pn(mvm, skb, queue, sta))
  kfree_skb(skb);
 else
  ieee80211_rx_napi(mvm->hw, sta, skb, napi);
}
