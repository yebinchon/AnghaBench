
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {scalar_t__ link_up; int state; } ;


 int __IXGBE_DOWN ;
 int __IXGBE_REMOVING ;
 int __IXGBE_RESETTING ;
 int ixgbe_check_for_bad_vf (struct ixgbe_adapter*) ;
 int ixgbe_spoof_check (struct ixgbe_adapter*) ;
 int ixgbe_update_stats (struct ixgbe_adapter*) ;
 int ixgbe_watchdog_flush_tx (struct ixgbe_adapter*) ;
 int ixgbe_watchdog_link_is_down (struct ixgbe_adapter*) ;
 int ixgbe_watchdog_link_is_up (struct ixgbe_adapter*) ;
 int ixgbe_watchdog_update_link (struct ixgbe_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_watchdog_subtask(struct ixgbe_adapter *adapter)
{

 if (test_bit(__IXGBE_DOWN, &adapter->state) ||
     test_bit(__IXGBE_REMOVING, &adapter->state) ||
     test_bit(__IXGBE_RESETTING, &adapter->state))
  return;

 ixgbe_watchdog_update_link(adapter);

 if (adapter->link_up)
  ixgbe_watchdog_link_is_up(adapter);
 else
  ixgbe_watchdog_link_is_down(adapter);

 ixgbe_check_for_bad_vf(adapter);
 ixgbe_spoof_check(adapter);
 ixgbe_update_stats(adapter);

 ixgbe_watchdog_flush_tx(adapter);
}
