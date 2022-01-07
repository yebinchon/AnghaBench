
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int service_task; int state; } ;


 int __IXGBEVF_DOWN ;
 int __IXGBEVF_REMOVING ;
 int __IXGBEVF_SERVICE_SCHED ;
 int ixgbevf_wq ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_service_event_schedule(struct ixgbevf_adapter *adapter)
{
 if (!test_bit(__IXGBEVF_DOWN, &adapter->state) &&
     !test_bit(__IXGBEVF_REMOVING, &adapter->state) &&
     !test_and_set_bit(__IXGBEVF_SERVICE_SCHED, &adapter->state))
  queue_work(ixgbevf_wq, &adapter->service_task);
}
