
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int priority; } ;
struct mt76_txq {int retry_q; } ;
struct mt76_dev {int hw; } ;
struct ieee80211_txq {int sta; } ;


 int IEEE80211_QOS_CTL_TID_MASK ;
 int ieee80211_sta_set_buffered (int ,int,int) ;
 struct sk_buff* ieee80211_tx_dequeue (int ,struct ieee80211_txq*) ;
 struct ieee80211_txq* mtxq_to_txq (struct mt76_txq*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static struct sk_buff *
mt76_txq_dequeue(struct mt76_dev *dev, struct mt76_txq *mtxq, bool ps)
{
 struct ieee80211_txq *txq = mtxq_to_txq(mtxq);
 struct sk_buff *skb;

 skb = skb_dequeue(&mtxq->retry_q);
 if (skb) {
  u8 tid = skb->priority & IEEE80211_QOS_CTL_TID_MASK;

  if (ps && skb_queue_empty(&mtxq->retry_q))
   ieee80211_sta_set_buffered(txq->sta, tid, 0);

  return skb;
 }

 skb = ieee80211_tx_dequeue(dev->hw, txq);
 if (!skb)
  return ((void*)0);

 return skb;
}
