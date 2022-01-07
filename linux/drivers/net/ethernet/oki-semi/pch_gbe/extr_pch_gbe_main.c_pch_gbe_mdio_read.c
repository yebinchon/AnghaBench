
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;


 int PCH_GBE_HAL_MIIM_READ ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_mac_ctrl_miim (struct pch_gbe_hw*,int,int ,int,int ) ;

__attribute__((used)) static int pch_gbe_mdio_read(struct net_device *netdev, int addr, int reg)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;

 return pch_gbe_mac_ctrl_miim(hw, addr, PCH_GBE_HAL_MIIM_READ, reg,
         (u16) 0);
}
