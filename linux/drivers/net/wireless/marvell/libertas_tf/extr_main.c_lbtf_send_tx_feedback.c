
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txpd {int dummy; } ;
struct lbtf_private {int tx_work; int hw; int bc_ps_buf; int skb_to_tx; int * tx_skb; } ;
struct ieee80211_tx_info {int flags; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (int *) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (int ,int *) ;
 int ieee80211_wake_queues (int ) ;
 int lbtf_wq ;
 int queue_work (int ,int *) ;
 int skb_pull (int *,int) ;
 scalar_t__ skb_queue_empty (int *) ;

void lbtf_send_tx_feedback(struct lbtf_private *priv, u8 retrycnt, u8 fail)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(priv->tx_skb);

 ieee80211_tx_info_clear_status(info);






 if (!(info->flags & IEEE80211_TX_CTL_NO_ACK) && !fail)
  info->flags |= IEEE80211_TX_STAT_ACK;
 skb_pull(priv->tx_skb, sizeof(struct txpd));
 ieee80211_tx_status_irqsafe(priv->hw, priv->tx_skb);
 priv->tx_skb = ((void*)0);
 if (!priv->skb_to_tx && skb_queue_empty(&priv->bc_ps_buf))
  ieee80211_wake_queues(priv->hw);
 else
  queue_work(lbtf_wq, &priv->tx_work);
}
