
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int global_device_reset; } ;
struct TYPE_6__ {TYPE_2__ _82575; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ dev_spec; TYPE_1__ mac; } ;
struct igb_adapter {int eims_enable_mask; int eims_other; int reset_task; int tx_timeout_count; struct e1000_hw hw; } ;


 int E1000_EICS ;
 scalar_t__ e1000_82580 ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_tx_timeout(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;


 adapter->tx_timeout_count++;

 if (hw->mac.type >= e1000_82580)
  hw->dev_spec._82575.global_device_reset = 1;

 schedule_work(&adapter->reset_task);
 wr32(E1000_EICS,
      (adapter->eims_enable_mask & ~adapter->eims_other));
}
