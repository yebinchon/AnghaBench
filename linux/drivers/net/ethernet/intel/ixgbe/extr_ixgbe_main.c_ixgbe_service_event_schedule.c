
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int service_task; int state; } ;


 int __IXGBE_DOWN ;
 int __IXGBE_REMOVING ;
 int __IXGBE_SERVICE_SCHED ;
 int ixgbe_wq ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_service_event_schedule(struct ixgbe_adapter *adapter)
{
 if (!test_bit(__IXGBE_DOWN, &adapter->state) &&
     !test_bit(__IXGBE_REMOVING, &adapter->state) &&
     !test_and_set_bit(__IXGBE_SERVICE_SCHED, &adapter->state))
  queue_work(ixgbe_wq, &adapter->service_task);
}
