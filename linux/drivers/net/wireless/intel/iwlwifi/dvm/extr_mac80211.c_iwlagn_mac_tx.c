
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ iwlagn_tx_skb (struct iwl_priv*,int ,struct sk_buff*) ;

__attribute__((used)) static void iwlagn_mac_tx(struct ieee80211_hw *hw,
     struct ieee80211_tx_control *control,
     struct sk_buff *skb)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 if (iwlagn_tx_skb(priv, control->sta, skb))
  ieee80211_free_txskb(hw, skb);
}
