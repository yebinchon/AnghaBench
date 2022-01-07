
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
 int PHY_AR8031_SERDES ;
 int PHY_AR8031_SERDES_TX_CLK_DLY ;

 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*,...) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int *) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;

__attribute__((used)) static int pch_gbe_phy_tx_clk_delay(struct pch_gbe_hw *hw)
{




 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 u16 mii_reg;
 int ret = 0;

 switch (hw->phy.id) {
 case 128:
  netdev_dbg(adapter->netdev,
      "Configuring AR803X PHY for 2ns TX clock delay\n");
  pch_gbe_phy_read_reg_miic(hw, PHY_AR8031_DBG_OFF, &mii_reg);
  ret = pch_gbe_phy_write_reg_miic(hw, PHY_AR8031_DBG_OFF,
       PHY_AR8031_SERDES);
  if (ret)
   break;

  pch_gbe_phy_read_reg_miic(hw, PHY_AR8031_DBG_DAT, &mii_reg);
  mii_reg |= PHY_AR8031_SERDES_TX_CLK_DLY;
  ret = pch_gbe_phy_write_reg_miic(hw, PHY_AR8031_DBG_DAT,
       mii_reg);
  break;
 default:
  netdev_err(adapter->netdev,
      "Unknown PHY (%x), could not set TX clock delay\n",
      hw->phy.id);
  return -EINVAL;
 }

 if (ret)
  netdev_err(adapter->netdev,
      "Could not configure tx clock delay for PHY\n");
 return ret;
}
