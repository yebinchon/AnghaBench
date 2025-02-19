
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_txq {int send_bar; scalar_t__ aggr; TYPE_1__* swq; } ;
struct mt76_queue {int lock; } ;
struct mt76_dev {int dummy; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct TYPE_2__ {struct mt76_queue* q; } ;


 int ARRAY_SIZE (struct ieee80211_txq**) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mt76_stop_tx_queues(struct mt76_dev *dev, struct ieee80211_sta *sta,
    bool send_bar)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sta->txq); i++) {
  struct ieee80211_txq *txq = sta->txq[i];
  struct mt76_queue *hwq;
  struct mt76_txq *mtxq;

  if (!txq)
   continue;

  mtxq = (struct mt76_txq *)txq->drv_priv;
  hwq = mtxq->swq->q;

  spin_lock_bh(&hwq->lock);
  mtxq->send_bar = mtxq->aggr && send_bar;
  spin_unlock_bh(&hwq->lock);
 }
}
