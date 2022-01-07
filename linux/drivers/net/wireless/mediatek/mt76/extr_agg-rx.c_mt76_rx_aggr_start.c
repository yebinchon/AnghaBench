
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct mt76_wcid {int * aggr; } ;
struct mt76_rx_tid {size_t size; int lock; int reorder_work; int head; struct mt76_dev* dev; } ;
struct mt76_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct mt76_rx_tid* kzalloc (int ,int ) ;
 int mt76_rx_aggr_reorder_work ;
 int mt76_rx_aggr_stop (struct mt76_dev*,struct mt76_wcid*,size_t) ;
 int rcu_assign_pointer (int ,struct mt76_rx_tid*) ;
 int reorder_buf ;
 int spin_lock_init (int *) ;
 int struct_size (struct mt76_rx_tid*,int ,size_t) ;

int mt76_rx_aggr_start(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno,
         u16 ssn, u8 size)
{
 struct mt76_rx_tid *tid;

 mt76_rx_aggr_stop(dev, wcid, tidno);

 tid = kzalloc(struct_size(tid, reorder_buf, size), GFP_KERNEL);
 if (!tid)
  return -ENOMEM;

 tid->dev = dev;
 tid->head = ssn;
 tid->size = size;
 INIT_DELAYED_WORK(&tid->reorder_work, mt76_rx_aggr_reorder_work);
 spin_lock_init(&tid->lock);

 rcu_assign_pointer(wcid->aggr[tidno], tid);

 return 0;
}
