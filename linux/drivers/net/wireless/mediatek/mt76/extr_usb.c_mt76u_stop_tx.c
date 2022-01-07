
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mt76_queue_entry {int urb; } ;
struct mt76_queue {int ndesc; size_t head; int lock; scalar_t__ queued; struct mt76_queue_entry* entry; } ;
struct TYPE_6__ {int stat_work; } ;
struct mt76_dev {int state; TYPE_3__ usb; TYPE_2__* drv; TYPE_1__* q_tx; int tx_tasklet; int dev; int tx_wait; } ;
struct TYPE_5__ {int (* tx_complete_skb ) (struct mt76_dev*,int,struct mt76_queue_entry*) ;} ;
struct TYPE_4__ {struct mt76_queue* q; } ;


 int HZ ;
 int IEEE80211_NUM_ACS ;
 int MT76_READING_STATS ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int mt76_has_tx_pending (struct mt76_dev*) ;
 int mt76_tx_status_check (struct mt76_dev*,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mt76_dev*,int,struct mt76_queue_entry*) ;
 int tasklet_kill (int *) ;
 int usb_kill_urb (int ) ;
 int wait_event_timeout (int ,int,int) ;

void mt76u_stop_tx(struct mt76_dev *dev)
{
 struct mt76_queue_entry entry;
 struct mt76_queue *q;
 int i, j, ret;

 ret = wait_event_timeout(dev->tx_wait, !mt76_has_tx_pending(dev),
     HZ / 5);
 if (!ret) {
  dev_err(dev->dev, "timed out waiting for pending tx\n");

  for (i = 0; i < IEEE80211_NUM_ACS; i++) {
   q = dev->q_tx[i].q;
   for (j = 0; j < q->ndesc; j++)
    usb_kill_urb(q->entry[j].urb);
  }

  tasklet_kill(&dev->tx_tasklet);




  for (i = 0; i < IEEE80211_NUM_ACS; i++) {
   q = dev->q_tx[i].q;


   spin_lock_bh(&q->lock);
   while (q->queued) {
    entry = q->entry[q->head];
    q->head = (q->head + 1) % q->ndesc;
    q->queued--;

    dev->drv->tx_complete_skb(dev, i, &entry);
   }
   spin_unlock_bh(&q->lock);
  }
 }

 cancel_delayed_work_sync(&dev->usb.stat_work);
 clear_bit(MT76_READING_STATS, &dev->state);

 mt76_tx_status_check(dev, ((void*)0), 1);
}
