
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcn36xx {int hw; int dxe_lock; struct sk_buff* tx_ack_skb; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int WCN36XX_DBG_DXE ;
 int ieee80211_tx_status_irqsafe (int ,struct sk_buff*) ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wcn36xx_dbg (int ,char*,int) ;
 int wcn36xx_warn (char*) ;

void wcn36xx_dxe_tx_ack_ind(struct wcn36xx *wcn, u32 status)
{
 struct ieee80211_tx_info *info;
 struct sk_buff *skb;
 unsigned long flags;

 spin_lock_irqsave(&wcn->dxe_lock, flags);
 skb = wcn->tx_ack_skb;
 wcn->tx_ack_skb = ((void*)0);
 spin_unlock_irqrestore(&wcn->dxe_lock, flags);

 if (!skb) {
  wcn36xx_warn("Spurious TX complete indication\n");
  return;
 }

 info = IEEE80211_SKB_CB(skb);

 if (status == 1)
  info->flags |= IEEE80211_TX_STAT_ACK;

 wcn36xx_dbg(WCN36XX_DBG_DXE, "dxe tx ack status: %d\n", status);

 ieee80211_tx_status_irqsafe(wcn->hw, skb);
 ieee80211_wake_queues(wcn->hw);
}
