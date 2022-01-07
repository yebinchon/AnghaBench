
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pch_gbe_phy_info {int addr; } ;
struct pch_gbe_hw {struct pch_gbe_phy_info phy; } ;
struct pch_gbe_adapter {int netdev; } ;
typedef int s32 ;


 int EINVAL ;
 int PCH_GBE_HAL_MIIM_READ ;
 scalar_t__ PHY_MAX_REG_ADDRESS ;
 int netdev_err (int ,char*,scalar_t__) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_mac_ctrl_miim (struct pch_gbe_hw*,int ,int ,scalar_t__,int ) ;

s32 pch_gbe_phy_read_reg_miic(struct pch_gbe_hw *hw, u32 offset, u16 *data)
{
 struct pch_gbe_phy_info *phy = &hw->phy;

 if (offset > PHY_MAX_REG_ADDRESS) {
  struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);

  netdev_err(adapter->netdev, "PHY Address %d is out of range\n",
      offset);
  return -EINVAL;
 }
 *data = pch_gbe_mac_ctrl_miim(hw, phy->addr, PCH_GBE_HAL_MIIM_READ,
          offset, (u16)0);
 return 0;
}
