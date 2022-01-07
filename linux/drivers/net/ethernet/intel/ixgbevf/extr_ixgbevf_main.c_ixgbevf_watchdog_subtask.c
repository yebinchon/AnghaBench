
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {scalar_t__ link_up; int state; } ;


 int __IXGBEVF_DOWN ;
 int __IXGBEVF_RESETTING ;
 int ixgbevf_update_stats (struct ixgbevf_adapter*) ;
 int ixgbevf_watchdog_link_is_down (struct ixgbevf_adapter*) ;
 int ixgbevf_watchdog_link_is_up (struct ixgbevf_adapter*) ;
 int ixgbevf_watchdog_update_link (struct ixgbevf_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_watchdog_subtask(struct ixgbevf_adapter *adapter)
{

 if (test_bit(__IXGBEVF_DOWN, &adapter->state) ||
     test_bit(__IXGBEVF_RESETTING, &adapter->state))
  return;

 ixgbevf_watchdog_update_link(adapter);

 if (adapter->link_up)
  ixgbevf_watchdog_link_is_up(adapter);
 else
  ixgbevf_watchdog_link_is_down(adapter);

 ixgbevf_update_stats(adapter);
}
