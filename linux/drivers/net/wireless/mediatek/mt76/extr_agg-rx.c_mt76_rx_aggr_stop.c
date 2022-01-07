
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mt76_wcid {int * aggr; } ;
struct mt76_rx_tid {int dummy; } ;
struct mt76_dev {int dummy; } ;


 int kfree_rcu (struct mt76_rx_tid*,int ) ;
 int mt76_rx_aggr_shutdown (struct mt76_dev*,struct mt76_rx_tid*) ;
 int rcu_assign_pointer (int ,int *) ;
 struct mt76_rx_tid* rcu_dereference (int ) ;
 int rcu_head ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void mt76_rx_aggr_stop(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno)
{
 struct mt76_rx_tid *tid;

 rcu_read_lock();

 tid = rcu_dereference(wcid->aggr[tidno]);
 if (tid) {
  rcu_assign_pointer(wcid->aggr[tidno], ((void*)0));
  mt76_rx_aggr_shutdown(dev, tid);
  kfree_rcu(tid, rcu_head);
 }

 rcu_read_unlock();
}
