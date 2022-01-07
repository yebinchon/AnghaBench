
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int prev; } ;
struct mt76_dev {int hw; } ;


 int MT_TX_CB_DMA_DONE ;
 int __mt76_tx_status_skb_done (struct mt76_dev*,struct sk_buff*,int ,struct sk_buff_head*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int mt76_tx_status_lock (struct mt76_dev*,struct sk_buff_head*) ;
 int mt76_tx_status_unlock (struct mt76_dev*,struct sk_buff_head*) ;

void mt76_tx_complete_skb(struct mt76_dev *dev, struct sk_buff *skb)
{
 struct sk_buff_head list;

 if (!skb->prev) {
  ieee80211_free_txskb(dev->hw, skb);
  return;
 }

 mt76_tx_status_lock(dev, &list);
 __mt76_tx_status_skb_done(dev, skb, MT_TX_CB_DMA_DONE, &list);
 mt76_tx_status_unlock(dev, &list);
}
