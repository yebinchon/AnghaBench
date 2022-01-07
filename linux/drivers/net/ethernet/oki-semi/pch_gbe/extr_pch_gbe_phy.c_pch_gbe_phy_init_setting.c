
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int autoneg; int link_duplex; int link_speed; } ;
struct TYPE_4__ {int autoneg_advertised; } ;
struct pch_gbe_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
struct pch_gbe_adapter {TYPE_3__* pdata; int netdev; int mii; } ;
struct ethtool_cmd {int autoneg; int advertising; int duplex; int cmd; } ;
struct TYPE_6__ {scalar_t__ phy_tx_clk_delay; } ;


 int BMCR_RESET ;
 int ETHTOOL_GSET ;
 int MII_BMCR ;
 int PHYSP_CTRL_ASSERT_CRS_TX ;
 int PHY_PHYSP_CONTROL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int ) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 int netdev_err (int ,char*) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int *) ;
 int pch_gbe_phy_sw_reset (struct pch_gbe_hw*) ;
 int pch_gbe_phy_tx_clk_delay (struct pch_gbe_hw*) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;

void pch_gbe_phy_init_setting(struct pch_gbe_hw *hw)
{
 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 struct ethtool_cmd cmd = { .cmd = ETHTOOL_GSET };
 int ret;
 u16 mii_reg;

 ret = mii_ethtool_gset(&adapter->mii, &cmd);
 if (ret)
  netdev_err(adapter->netdev, "Error: mii_ethtool_gset\n");

 ethtool_cmd_speed_set(&cmd, hw->mac.link_speed);
 cmd.duplex = hw->mac.link_duplex;
 cmd.advertising = hw->phy.autoneg_advertised;
 cmd.autoneg = hw->mac.autoneg;
 pch_gbe_phy_write_reg_miic(hw, MII_BMCR, BMCR_RESET);
 ret = mii_ethtool_sset(&adapter->mii, &cmd);
 if (ret)
  netdev_err(adapter->netdev, "Error: mii_ethtool_sset\n");

 pch_gbe_phy_sw_reset(hw);

 pch_gbe_phy_read_reg_miic(hw, PHY_PHYSP_CONTROL, &mii_reg);
 mii_reg |= PHYSP_CTRL_ASSERT_CRS_TX;
 pch_gbe_phy_write_reg_miic(hw, PHY_PHYSP_CONTROL, mii_reg);


 if (adapter->pdata && adapter->pdata->phy_tx_clk_delay)
  pch_gbe_phy_tx_clk_delay(hw);
}
