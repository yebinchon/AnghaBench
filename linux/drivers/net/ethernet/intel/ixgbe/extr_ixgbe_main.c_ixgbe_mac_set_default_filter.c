
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbe_mac_addr {int state; int pool; int addr; } ;
struct TYPE_3__ {int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; int addr; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct ixgbe_mac_addr* mac_table; } ;


 int ETH_ALEN ;
 int IXGBE_MAC_STATE_DEFAULT ;
 int IXGBE_MAC_STATE_IN_USE ;
 int IXGBE_RAH_AV ;
 int VMDQ_P (int ) ;
 int memcpy (int *,int ,int ) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int ,int ) ;

__attribute__((used)) static void ixgbe_mac_set_default_filter(struct ixgbe_adapter *adapter)
{
 struct ixgbe_mac_addr *mac_table = &adapter->mac_table[0];
 struct ixgbe_hw *hw = &adapter->hw;

 memcpy(&mac_table->addr, hw->mac.addr, ETH_ALEN);
 mac_table->pool = VMDQ_P(0);

 mac_table->state = IXGBE_MAC_STATE_DEFAULT | IXGBE_MAC_STATE_IN_USE;

 hw->mac.ops.set_rar(hw, 0, mac_table->addr, mac_table->pool,
       IXGBE_RAH_AV);
}
