
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwl8k_priv {int radio_on; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int mwl8k_txq_xmit (struct ieee80211_hw*,int,int ,struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int wiphy_debug (int ,char*) ;

__attribute__((used)) static void mwl8k_tx(struct ieee80211_hw *hw,
       struct ieee80211_tx_control *control,
       struct sk_buff *skb)
{
 struct mwl8k_priv *priv = hw->priv;
 int index = skb_get_queue_mapping(skb);

 if (!priv->radio_on) {
  wiphy_debug(hw->wiphy,
       "dropped TX frame since radio disabled\n");
  dev_kfree_skb(skb);
  return;
 }

 mwl8k_txq_xmit(hw, index, control->sta, skb);
}
