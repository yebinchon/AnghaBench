
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ETH_P_IP ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ iwl_mvm_can_hw_csum (struct sk_buff*) ;
 int iwl_mvm_is_csum_supported (struct iwl_mvm*) ;

__attribute__((used)) static bool iwl_mvm_mac_can_aggregate(struct ieee80211_hw *hw,
          struct sk_buff *head,
          struct sk_buff *skb)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);


 if (skb->protocol != htons(ETH_P_IP))
  return 0;

 if (!iwl_mvm_is_csum_supported(mvm))
  return 1;

 return iwl_mvm_can_hw_csum(skb) == iwl_mvm_can_hw_csum(head);
}
