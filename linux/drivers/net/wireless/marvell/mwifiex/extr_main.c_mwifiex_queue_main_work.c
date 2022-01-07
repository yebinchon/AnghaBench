
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int more_task_flag; int main_work; int workqueue; int main_proc_lock; scalar_t__ mwifiex_processing; } ;


 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mwifiex_queue_main_work(struct mwifiex_adapter *adapter)
{
 unsigned long flags;

 spin_lock_irqsave(&adapter->main_proc_lock, flags);
 if (adapter->mwifiex_processing) {
  adapter->more_task_flag = 1;
  spin_unlock_irqrestore(&adapter->main_proc_lock, flags);
 } else {
  spin_unlock_irqrestore(&adapter->main_proc_lock, flags);
  queue_work(adapter->workqueue, &adapter->main_work);
 }
}
