
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int DP (int ,char*,...) ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ;
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN ;
 int MDIO_COMBO_IEEE0_MII_CONTROL ;
 int MDIO_COMBO_IEEO_MII_CONTROL_AN_EN ;
 int MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN ;
 int MDIO_REG_BANK_CL73_IEEEB0 ;
 int MDIO_REG_BANK_COMBO_IEEE0 ;
 int NETIF_MSG_LINK ;

__attribute__((used)) static void bnx2x_restart_autoneg(struct bnx2x_phy *phy,
      struct link_params *params,
      u8 enable_cl73)
{
 struct bnx2x *bp = params->bp;
 u16 mii_control;

 DP(NETIF_MSG_LINK, "bnx2x_restart_autoneg\n");


 if (enable_cl73) {
  CL22_RD_OVER_CL45(bp, phy,
      MDIO_REG_BANK_CL73_IEEEB0,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
      &mii_control);

  CL22_WR_OVER_CL45(bp, phy,
      MDIO_REG_BANK_CL73_IEEEB0,
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
      (mii_control |
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN |
      MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN));
 } else {

  CL22_RD_OVER_CL45(bp, phy,
      MDIO_REG_BANK_COMBO_IEEE0,
      MDIO_COMBO_IEEE0_MII_CONTROL,
      &mii_control);
  DP(NETIF_MSG_LINK,
    "bnx2x_restart_autoneg mii_control before = 0x%x\n",
    mii_control);
  CL22_WR_OVER_CL45(bp, phy,
      MDIO_REG_BANK_COMBO_IEEE0,
      MDIO_COMBO_IEEE0_MII_CONTROL,
      (mii_control |
       MDIO_COMBO_IEEO_MII_CONTROL_AN_EN |
       MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN));
 }
}
