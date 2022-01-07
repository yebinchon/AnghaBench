
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lbtf_private {int hw; int tx_work; struct sk_buff* skb_to_tx; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;


 int ieee80211_stop_queues (int ) ;
 int lbtf_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void lbtf_op_tx(struct ieee80211_hw *hw,
         struct ieee80211_tx_control *control,
         struct sk_buff *skb)
{
 struct lbtf_private *priv = hw->priv;

 priv->skb_to_tx = skb;
 queue_work(lbtf_wq, &priv->tx_work);




 ieee80211_stop_queues(priv->hw);
}
