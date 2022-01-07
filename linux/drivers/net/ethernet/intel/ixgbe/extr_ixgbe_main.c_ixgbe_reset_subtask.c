
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int tx_timeout_count; int netdev; int state; } ;


 int __IXGBE_DOWN ;
 int __IXGBE_REMOVING ;
 int __IXGBE_RESETTING ;
 int __IXGBE_RESET_REQUESTED ;
 int ixgbe_dump (struct ixgbe_adapter*) ;
 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 int netdev_err (int ,char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
{
 if (!test_and_clear_bit(__IXGBE_RESET_REQUESTED, &adapter->state))
  return;

 rtnl_lock();

 if (test_bit(__IXGBE_DOWN, &adapter->state) ||
     test_bit(__IXGBE_REMOVING, &adapter->state) ||
     test_bit(__IXGBE_RESETTING, &adapter->state)) {
  rtnl_unlock();
  return;
 }

 ixgbe_dump(adapter);
 netdev_err(adapter->netdev, "Reset adapter\n");
 adapter->tx_timeout_count++;

 ixgbe_reinit_locked(adapter);
 rtnl_unlock();
}
