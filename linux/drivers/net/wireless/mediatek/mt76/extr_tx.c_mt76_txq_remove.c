
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mt76_txq {int retry_q; } ;
struct mt76_dev {int hw; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;


 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

void mt76_txq_remove(struct mt76_dev *dev, struct ieee80211_txq *txq)
{
 struct mt76_txq *mtxq;
 struct sk_buff *skb;

 if (!txq)
  return;

 mtxq = (struct mt76_txq *)txq->drv_priv;

 while ((skb = skb_dequeue(&mtxq->retry_q)) != ((void*)0))
  ieee80211_free_txskb(dev->hw, skb);
}
