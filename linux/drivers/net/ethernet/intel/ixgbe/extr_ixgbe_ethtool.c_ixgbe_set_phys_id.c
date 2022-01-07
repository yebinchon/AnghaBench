
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* led_off ) (struct ixgbe_hw*,int ) ;int (* led_on ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {int led_link_act; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int led_reg; struct ixgbe_hw hw; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EOPNOTSUPP ;




 int IXGBE_LEDCTL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static int ixgbe_set_phys_id(struct net_device *netdev,
        enum ethtool_phys_id_state state)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (!hw->mac.ops.led_on || !hw->mac.ops.led_off)
  return -EOPNOTSUPP;

 switch (state) {
 case 131:
  adapter->led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
  return 2;

 case 128:
  hw->mac.ops.led_on(hw, hw->mac.led_link_act);
  break;

 case 129:
  hw->mac.ops.led_off(hw, hw->mac.led_link_act);
  break;

 case 130:

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_LEDCTL, adapter->led_reg);
  break;
 }

 return 0;
}
