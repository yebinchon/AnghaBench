
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int reset_task; int flags; struct e1000_hw hw; struct net_device* netdev; } ;


 int IGB_FLAG_FQTSS ;
 int WARN_ON (int) ;
 scalar_t__ e1000_i210 ;
 scalar_t__ netif_running (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void enable_fqtss(struct igb_adapter *adapter, bool enable)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;

 WARN_ON(hw->mac.type != e1000_i210);

 if (enable)
  adapter->flags |= IGB_FLAG_FQTSS;
 else
  adapter->flags &= ~IGB_FLAG_FQTSS;

 if (netif_running(netdev))
  schedule_work(&adapter->reset_task);
}
