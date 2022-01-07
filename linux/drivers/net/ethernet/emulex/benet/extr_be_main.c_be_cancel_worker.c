
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int flags; int work; } ;


 int BE_FLAGS_WORKER_SCHEDULED ;
 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void be_cancel_worker(struct be_adapter *adapter)
{
 if (adapter->flags & BE_FLAGS_WORKER_SCHEDULED) {
  cancel_delayed_work_sync(&adapter->work);
  adapter->flags &= ~BE_FLAGS_WORKER_SCHEDULED;
 }
}
