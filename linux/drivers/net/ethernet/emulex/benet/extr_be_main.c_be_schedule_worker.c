
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int flags; int work; } ;


 int BE_FLAGS_WORKER_SCHEDULED ;
 int be_wq ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void be_schedule_worker(struct be_adapter *adapter)
{
 queue_delayed_work(be_wq, &adapter->work, msecs_to_jiffies(1000));
 adapter->flags |= BE_FLAGS_WORKER_SCHEDULED;
}
