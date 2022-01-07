
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int rx_work; int rx_workqueue; int rx_proc_lock; scalar_t__ rx_processing; } ;


 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mwifiex_queue_rx_work(struct mwifiex_adapter *adapter)
{
 spin_lock_bh(&adapter->rx_proc_lock);
 if (adapter->rx_processing) {
  spin_unlock_bh(&adapter->rx_proc_lock);
 } else {
  spin_unlock_bh(&adapter->rx_proc_lock);
  queue_work(adapter->rx_workqueue, &adapter->rx_work);
 }
}
