
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_txq {int * swq; int retry_q; } ;
struct mt76_dev {int * q_tx; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;


 size_t mt76_txq_get_qid (struct ieee80211_txq*) ;
 int skb_queue_head_init (int *) ;

void mt76_txq_init(struct mt76_dev *dev, struct ieee80211_txq *txq)
{
 struct mt76_txq *mtxq = (struct mt76_txq *)txq->drv_priv;

 skb_queue_head_init(&mtxq->retry_q);

 mtxq->swq = &dev->q_tx[mt76_txq_get_qid(txq)];
}
