
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct phy_device {scalar_t__ state; scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_DISABLE ;
 void* FIELD_GET (int ,int) ;
 int MDIO_AN_RX_LP_STAT1 ;
 int MDIO_AN_RX_LP_STAT1_AQRATE_DOWNSHIFT ;
 int MDIO_AN_RX_LP_STAT1_AQ_PHY ;
 int MDIO_AN_RX_LP_STAT1_SHORT_REACH ;
 int MDIO_AN_RX_LP_STAT4 ;
 int MDIO_AN_RX_LP_STAT4_FW_MAJOR ;
 int MDIO_AN_RX_LP_STAT4_FW_MINOR ;
 int MDIO_AN_RX_VEND_STAT3 ;
 int MDIO_AN_RX_VEND_STAT3_AFR ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_VEND1 ;
 scalar_t__ PHY_RUNNING ;
 int VEND1_GLOBAL_RSVD_STAT9 ;
 int VEND1_GLOBAL_RSVD_STAT9_1000BT2 ;
 int VEND1_GLOBAL_RSVD_STAT9_MODE ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phydev_dbg (struct phy_device*,char*,void*,void*,char*,char*,char*) ;
 int phydev_info (struct phy_device*,char*) ;

__attribute__((used)) static void aqr107_link_change_notify(struct phy_device *phydev)
{
 u8 fw_major, fw_minor;
 bool downshift, short_reach, afr;
 int mode, val;

 if (phydev->state != PHY_RUNNING || phydev->autoneg == AUTONEG_DISABLE)
  return;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_RX_LP_STAT1);

 if (val < 0 || !(val & MDIO_AN_RX_LP_STAT1_AQ_PHY))
  return;

 short_reach = val & MDIO_AN_RX_LP_STAT1_SHORT_REACH;
 downshift = val & MDIO_AN_RX_LP_STAT1_AQRATE_DOWNSHIFT;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_RX_LP_STAT4);
 if (val < 0)
  return;

 fw_major = FIELD_GET(MDIO_AN_RX_LP_STAT4_FW_MAJOR, val);
 fw_minor = FIELD_GET(MDIO_AN_RX_LP_STAT4_FW_MINOR, val);

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_RX_VEND_STAT3);
 if (val < 0)
  return;

 afr = val & MDIO_AN_RX_VEND_STAT3_AFR;

 phydev_dbg(phydev, "Link partner is Aquantia PHY, FW %u.%u%s%s%s\n",
     fw_major, fw_minor,
     short_reach ? ", short reach mode" : "",
     downshift ? ", fast-retrain downshift advertised" : "",
     afr ? ", fast reframe advertised" : "");

 val = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_RSVD_STAT9);
 if (val < 0)
  return;

 mode = FIELD_GET(VEND1_GLOBAL_RSVD_STAT9_MODE, val);
 if (mode == VEND1_GLOBAL_RSVD_STAT9_1000BT2)
  phydev_info(phydev, "Aquantia 1000Base-T2 mode active\n");
}
