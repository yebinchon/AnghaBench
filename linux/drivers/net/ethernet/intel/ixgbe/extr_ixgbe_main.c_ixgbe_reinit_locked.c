
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags; int state; TYPE_2__ hw; int netdev; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 int WARN_ON (int ) ;
 int __IXGBE_RESETTING ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;
 int ixgbe_down (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_phy_fw ;
 int ixgbe_up (struct ixgbe_adapter*) ;
 int ixgbe_watchdog_link_is_down (struct ixgbe_adapter*) ;
 int msleep (int) ;
 int netif_trans_update (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
{
 WARN_ON(in_interrupt());

 netif_trans_update(adapter->netdev);

 while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
  usleep_range(1000, 2000);
 if (adapter->hw.phy.type == ixgbe_phy_fw)
  ixgbe_watchdog_link_is_down(adapter);
 ixgbe_down(adapter);






 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  msleep(2000);
 ixgbe_up(adapter);
 clear_bit(__IXGBE_RESETTING, &adapter->state);
}
