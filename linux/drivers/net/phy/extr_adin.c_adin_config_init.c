
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int interface; int mdix_ctrl; } ;


 int ETHTOOL_PHY_EDPD_DFLT_TX_MSECS ;
 int ETH_TP_MDI_AUTO ;
 int adin_config_rgmii_mode (struct phy_device*) ;
 int adin_config_rmii_mode (struct phy_device*) ;
 int adin_set_downshift (struct phy_device*,int) ;
 int adin_set_edpd (struct phy_device*,int ) ;
 int phy_modes (int ) ;
 int phydev_dbg (struct phy_device*,char*,int ) ;

__attribute__((used)) static int adin_config_init(struct phy_device *phydev)
{
 int rc;

 phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

 rc = adin_config_rgmii_mode(phydev);
 if (rc < 0)
  return rc;

 rc = adin_config_rmii_mode(phydev);
 if (rc < 0)
  return rc;

 rc = adin_set_downshift(phydev, 4);
 if (rc < 0)
  return rc;

 rc = adin_set_edpd(phydev, ETHTOOL_PHY_EDPD_DFLT_TX_MSECS);
 if (rc < 0)
  return rc;

 phydev_dbg(phydev, "PHY is using mode '%s'\n",
     phy_modes(phydev->interface));

 return 0;
}
