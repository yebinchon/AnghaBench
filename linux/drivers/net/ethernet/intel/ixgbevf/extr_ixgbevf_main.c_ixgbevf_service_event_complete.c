
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int state; } ;


 int BUG_ON (int) ;
 int __IXGBEVF_SERVICE_SCHED ;
 int clear_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_service_event_complete(struct ixgbevf_adapter *adapter)
{
 BUG_ON(!test_bit(__IXGBEVF_SERVICE_SCHED, &adapter->state));


 smp_mb__before_atomic();
 clear_bit(__IXGBEVF_SERVICE_SCHED, &adapter->state);
}
