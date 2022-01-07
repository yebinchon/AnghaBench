
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int id; } ;
struct pch_gbe_hw {TYPE_1__ phy; } ;
struct pch_gbe_adapter {int netdev; } ;


 int EINVAL ;
 int PHY_AR8031_DBG_DAT ;
 int PHY_AR8031_DBG_OFF ;
 int PHY_AR8031_HIBERNATE ;
 int PHY_AR8031_PS_HIB_EN ;

 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*,...) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int *) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;

int pch_gbe_phy_disable_hibernate(struct pch_gbe_hw *hw)
{
 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 u16 mii_reg;
 int ret = 0;

 switch (hw->phy.id) {
 case 128:
  netdev_dbg(adapter->netdev,
      "Disabling hibernation for AR803X PHY\n");
  ret = pch_gbe_phy_write_reg_miic(hw, PHY_AR8031_DBG_OFF,
       PHY_AR8031_HIBERNATE);
  if (ret)
   break;

  pch_gbe_phy_read_reg_miic(hw, PHY_AR8031_DBG_DAT, &mii_reg);
  mii_reg &= ~PHY_AR8031_PS_HIB_EN;
  ret = pch_gbe_phy_write_reg_miic(hw, PHY_AR8031_DBG_DAT,
       mii_reg);
  break;
 default:
  netdev_err(adapter->netdev,
      "Unknown PHY (%x), could not disable hibernation\n",
      hw->phy.id);
  return -EINVAL;
 }

 if (ret)
  netdev_err(adapter->netdev,
      "Could not disable PHY hibernation\n");
 return ret;
}
