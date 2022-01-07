
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct lbtf_private {TYPE_1__* vif; int hw; int tx_work; int bc_ps_buf; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 struct sk_buff* ieee80211_beacon_get (int ,TYPE_1__*) ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,TYPE_1__*) ;
 int ieee80211_stop_queues (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lbtf_beacon_set (struct lbtf_private*,struct sk_buff*) ;
 int lbtf_wq ;
 int queue_work (int ,int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void lbtf_bcn_sent(struct lbtf_private *priv)
{
 struct sk_buff *skb = ((void*)0);

 if (priv->vif->type != NL80211_IFTYPE_AP)
  return;

 if (skb_queue_empty(&priv->bc_ps_buf)) {
  bool tx_buff_bc = 0;

  while ((skb = ieee80211_get_buffered_bc(priv->hw, priv->vif))) {
   skb_queue_tail(&priv->bc_ps_buf, skb);
   tx_buff_bc = 1;
  }
  if (tx_buff_bc) {
   ieee80211_stop_queues(priv->hw);
   queue_work(lbtf_wq, &priv->tx_work);
  }
 }

 skb = ieee80211_beacon_get(priv->hw, priv->vif);

 if (skb) {
  lbtf_beacon_set(priv, skb);
  kfree_skb(skb);
 }
}
