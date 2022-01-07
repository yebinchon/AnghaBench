
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int state; } ;


 int __IXGBEVF_DOWN ;
 int __IXGBEVF_RESET_REQUESTED ;
 int ixgbevf_service_event_schedule (struct ixgbevf_adapter*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_tx_timeout_reset(struct ixgbevf_adapter *adapter)
{

 if (!test_bit(__IXGBEVF_DOWN, &adapter->state)) {
  set_bit(__IXGBEVF_RESET_REQUESTED, &adapter->state);
  ixgbevf_service_event_schedule(adapter);
 }
}
