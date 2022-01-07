
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ eee_speeds_supported; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags2; struct ixgbe_hw hw; } ;
struct ethtool_eee {int dummy; } ;


 int EOPNOTSUPP ;
 int IXGBE_FLAG2_EEE_CAPABLE ;
 int ixgbe_get_eee_fw (struct ixgbe_adapter*,struct ethtool_eee*) ;
 scalar_t__ ixgbe_phy_fw ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
  return -EOPNOTSUPP;

 if (hw->phy.eee_speeds_supported && hw->phy.type == ixgbe_phy_fw)
  return ixgbe_get_eee_fw(adapter, edata);

 return -EOPNOTSUPP;
}
