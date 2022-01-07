
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; int speed_cap_mask; int* tx_preemphasis; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 int FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_ADV ;
 int MDIO_AN_REG_CL37_AN ;
 int MDIO_AN_REG_CL37_CL73 ;
 int MDIO_AN_REG_CL37_FC_LD ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int MDIO_PMA_REG_10G_CTRL2 ;
 int MDIO_PMA_REG_8726_TX_CTRL1 ;
 int MDIO_PMA_REG_8726_TX_CTRL2 ;
 int MDIO_PMA_REG_CTRL ;
 int NETIF_MSG_LINK ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_AUTO_NEG ;
 int bnx2x_8726_external_rom_boot (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_set_pause (struct link_params*,struct bnx2x_phy*,struct link_vars*) ;
 int bnx2x_sfp_module_detection (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_wait_reset_complete (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static int bnx2x_8726_config_init(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "Initializing BCM8726\n");

 bnx2x_cl45_write(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
 bnx2x_wait_reset_complete(bp, phy, params);

 bnx2x_8726_external_rom_boot(phy, params);






 bnx2x_sfp_module_detection(phy, params);

 if (phy->req_line_speed == SPEED_1000) {
  DP(NETIF_MSG_LINK, "Setting 1G force\n");
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x5);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     0x400);
 } else if ((phy->req_line_speed == SPEED_AUTO_NEG) &&
     (phy->speed_cap_mask &
        PORT_HW_CFG_SPEED_CAPABILITY_D0_1G) &&
     ((phy->speed_cap_mask &
        PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
      PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {
  DP(NETIF_MSG_LINK, "Setting 1G clause37\n");

  bnx2x_ext_phy_set_pause(params, phy, vars);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_ADV, 0x20);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_CL73, 0x040c);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_FC_LD, 0x0020);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1000);
  bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x1200);



  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x4);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     0x400);

 } else {
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 1);
 }


 if ((params->feature_config_flags &
      FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED)) {
  DP(NETIF_MSG_LINK,
     "Setting TX_CTRL1 0x%x, TX_CTRL2 0x%x\n",
    phy->tx_preemphasis[0],
    phy->tx_preemphasis[1]);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8726_TX_CTRL1,
     phy->tx_preemphasis[0]);

  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8726_TX_CTRL2,
     phy->tx_preemphasis[1]);
 }

 return 0;

}
