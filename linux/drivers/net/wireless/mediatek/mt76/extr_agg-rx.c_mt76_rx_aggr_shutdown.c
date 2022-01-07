
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mt76_rx_tid {int size; int stopped; int lock; scalar_t__ nframes; struct sk_buff** reorder_buf; int reorder_work; } ;
struct mt76_dev {int dummy; } ;


 int cancel_delayed_work (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mt76_rx_aggr_shutdown(struct mt76_dev *dev, struct mt76_rx_tid *tid)
{
 u8 size = tid->size;
 int i;

 cancel_delayed_work(&tid->reorder_work);

 spin_lock_bh(&tid->lock);

 tid->stopped = 1;
 for (i = 0; tid->nframes && i < size; i++) {
  struct sk_buff *skb = tid->reorder_buf[i];

  if (!skb)
   continue;

  tid->nframes--;
  dev_kfree_skb(skb);
 }

 spin_unlock_bh(&tid->lock);
}
