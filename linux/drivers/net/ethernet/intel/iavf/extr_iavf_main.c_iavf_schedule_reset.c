
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int flags; int reset_task; } ;


 int IAVF_FLAG_RESET_NEEDED ;
 int IAVF_FLAG_RESET_PENDING ;
 int iavf_wq ;
 int queue_work (int ,int *) ;

void iavf_schedule_reset(struct iavf_adapter *adapter)
{
 if (!(adapter->flags &
       (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
  adapter->flags |= IAVF_FLAG_RESET_NEEDED;
  queue_work(iavf_wq, &adapter->reset_task);
 }
}
