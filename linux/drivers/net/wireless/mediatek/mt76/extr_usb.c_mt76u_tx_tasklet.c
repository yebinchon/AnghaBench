
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mt76_sw_queue {int swq_queued; struct mt76_queue* q; } ;
struct mt76_queue_entry {int done; int schedule; } ;
struct mt76_queue {scalar_t__ queued; size_t head; int ndesc; int stopped; int lock; struct mt76_queue_entry* entry; } ;
struct TYPE_4__ {int stat_work; } ;
struct mt76_dev {int hw; TYPE_2__ usb; int state; int tx_wait; TYPE_1__* drv; struct mt76_sw_queue* q_tx; } ;
struct TYPE_3__ {int (* tx_complete_skb ) (struct mt76_dev*,int,struct mt76_queue_entry*) ;} ;


 int IEEE80211_NUM_ACS ;
 int MT76_READING_STATS ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int ieee80211_wake_queue (int ,int) ;
 int msecs_to_jiffies (int) ;
 int mt76_txq_schedule (struct mt76_dev*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mt76_dev*,int,struct mt76_queue_entry*) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void mt76u_tx_tasklet(unsigned long data)
{
 struct mt76_dev *dev = (struct mt76_dev *)data;
 struct mt76_queue_entry entry;
 struct mt76_sw_queue *sq;
 struct mt76_queue *q;
 bool wake;
 int i;

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  u32 n_dequeued = 0, n_sw_dequeued = 0;

  sq = &dev->q_tx[i];
  q = sq->q;

  while (q->queued > n_dequeued) {
   if (!q->entry[q->head].done)
    break;

   if (q->entry[q->head].schedule) {
    q->entry[q->head].schedule = 0;
    n_sw_dequeued++;
   }

   entry = q->entry[q->head];
   q->entry[q->head].done = 0;
   q->head = (q->head + 1) % q->ndesc;
   n_dequeued++;

   dev->drv->tx_complete_skb(dev, i, &entry);
  }

  spin_lock_bh(&q->lock);

  sq->swq_queued -= n_sw_dequeued;
  q->queued -= n_dequeued;

  wake = q->stopped && q->queued < q->ndesc - 8;
  if (wake)
   q->stopped = 0;

  if (!q->queued)
   wake_up(&dev->tx_wait);

  spin_unlock_bh(&q->lock);

  mt76_txq_schedule(dev, i);

  if (!test_and_set_bit(MT76_READING_STATS, &dev->state))
   ieee80211_queue_delayed_work(dev->hw,
           &dev->usb.stat_work,
           msecs_to_jiffies(10));

  if (wake)
   ieee80211_wake_queue(dev->hw, i);
 }
}
