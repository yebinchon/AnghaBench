
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int addr_len; int perm_addr; int dev_addr; } ;
struct TYPE_4__ {int (* init_hw ) (struct e1000_hw*) ;scalar_t__ (* reset_hw ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int addr; TYPE_2__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; int mbx_lock; } ;
struct igbvf_adapter {int last_reset; struct e1000_hw hw; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int jiffies ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static void igbvf_reset(struct igbvf_adapter *adapter)
{
 struct e1000_mac_info *mac = &adapter->hw.mac;
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;

 spin_lock_bh(&hw->mbx_lock);


 if (mac->ops.reset_hw(hw))
  dev_err(&adapter->pdev->dev, "PF still resetting\n");

 mac->ops.init_hw(hw);

 spin_unlock_bh(&hw->mbx_lock);

 if (is_valid_ether_addr(adapter->hw.mac.addr)) {
  memcpy(netdev->dev_addr, adapter->hw.mac.addr,
         netdev->addr_len);
  memcpy(netdev->perm_addr, adapter->hw.mac.addr,
         netdev->addr_len);
 }

 adapter->last_reset = jiffies;
}
