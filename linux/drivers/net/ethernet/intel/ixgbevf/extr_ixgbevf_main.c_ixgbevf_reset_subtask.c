
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int tx_timeout_count; int state; } ;


 int __IXGBEVF_DOWN ;
 int __IXGBEVF_REMOVING ;
 int __IXGBEVF_RESETTING ;
 int __IXGBEVF_RESET_REQUESTED ;
 int ixgbevf_reinit_locked (struct ixgbevf_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_reset_subtask(struct ixgbevf_adapter *adapter)
{
 if (!test_and_clear_bit(__IXGBEVF_RESET_REQUESTED, &adapter->state))
  return;

 rtnl_lock();

 if (test_bit(__IXGBEVF_DOWN, &adapter->state) ||
     test_bit(__IXGBEVF_REMOVING, &adapter->state) ||
     test_bit(__IXGBEVF_RESETTING, &adapter->state)) {
  rtnl_unlock();
  return;
 }

 adapter->tx_timeout_count++;

 ixgbevf_reinit_locked(adapter);
 rtnl_unlock();
}
