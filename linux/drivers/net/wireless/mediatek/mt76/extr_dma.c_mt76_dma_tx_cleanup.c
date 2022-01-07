
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt76_sw_queue {unsigned int swq_queued; struct mt76_queue* q; } ;
struct mt76_queue_entry {size_t qid; scalar_t__ txwi; scalar_t__ skb; scalar_t__ schedule; } ;
struct mt76_queue {unsigned int queued; int tail; int ndesc; int stopped; int lock; TYPE_2__* regs; } ;
struct mt76_dev {int hw; int tx_wait; struct mt76_sw_queue* q_tx; TYPE_1__* drv; } ;
typedef enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;
struct TYPE_4__ {int dma_idx; } ;
struct TYPE_3__ {int txwi_flags; int (* tx_complete_skb ) (struct mt76_dev*,int,struct mt76_queue_entry*) ;} ;


 int ARRAY_SIZE (unsigned int*) ;
 int IEEE80211_NUM_ACS ;
 int MT_TXWI_NO_FREE ;
 int ieee80211_wake_queue (int ,int) ;
 int mt76_dma_sync_idx (struct mt76_dev*,struct mt76_queue*) ;
 int mt76_dma_tx_cleanup_idx (struct mt76_dev*,struct mt76_queue*,int,struct mt76_queue_entry*) ;
 int mt76_put_txwi (struct mt76_dev*,scalar_t__) ;
 int readl (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mt76_dev*,int,struct mt76_queue_entry*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
mt76_dma_tx_cleanup(struct mt76_dev *dev, enum mt76_txq_id qid, bool flush)
{
 struct mt76_sw_queue *sq = &dev->q_tx[qid];
 struct mt76_queue *q = sq->q;
 struct mt76_queue_entry entry;
 unsigned int n_swq_queued[4] = {};
 unsigned int n_queued = 0;
 bool wake = 0;
 int i, last;

 if (!q)
  return;

 if (flush)
  last = -1;
 else
  last = readl(&q->regs->dma_idx);

 while ((q->queued > n_queued) && q->tail != last) {
  mt76_dma_tx_cleanup_idx(dev, q, q->tail, &entry);
  if (entry.schedule)
   n_swq_queued[entry.qid]++;

  q->tail = (q->tail + 1) % q->ndesc;
  n_queued++;

  if (entry.skb)
   dev->drv->tx_complete_skb(dev, qid, &entry);

  if (entry.txwi) {
   if (!(dev->drv->txwi_flags & MT_TXWI_NO_FREE))
    mt76_put_txwi(dev, entry.txwi);
   wake = !flush;
  }

  if (!flush && q->tail == last)
   last = readl(&q->regs->dma_idx);
 }

 spin_lock_bh(&q->lock);

 q->queued -= n_queued;
 for (i = 0; i < ARRAY_SIZE(n_swq_queued); i++) {
  if (!n_swq_queued[i])
   continue;

  dev->q_tx[i].swq_queued -= n_swq_queued[i];
 }

 if (flush)
  mt76_dma_sync_idx(dev, q);

 wake = wake && q->stopped &&
        qid < IEEE80211_NUM_ACS && q->queued < q->ndesc - 8;
 if (wake)
  q->stopped = 0;

 if (!q->queued)
  wake_up(&dev->tx_wait);

 spin_unlock_bh(&q->lock);

 if (wake)
  ieee80211_wake_queue(dev->hw, qid);
}
