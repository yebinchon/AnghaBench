
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {scalar_t__ line_speed; int link_status; int duplex; } ;
struct link_params {int lane_config; int port; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 int DUPLEX_FULL ;
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_LINK_STATUS ;
 int MDIO_AN_REG_LP_AUTO_NEG2 ;
 int MDIO_PCS_DEVAD ;
 int MDIO_PCS_REG_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_REG_8073_SPEED_LINK_STATUS ;
 int MDIO_PMA_REG_CDR_BANDWIDTH ;
 int MDIO_PMA_REG_M8051_MSGOUT_REG ;
 int MDIO_PMA_REG_PLL_BANDWIDTH ;
 int MDIO_PMA_REG_STATUS ;
 int MDIO_XS_DEVAD ;
 int MDIO_XS_REG_8073_RX_CTRL_PCIE ;
 int NETIF_MSG_LINK ;
 int PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 scalar_t__ SPEED_2500 ;
 scalar_t__ bnx2x_8073_is_snr_needed (struct bnx2x*,struct bnx2x_phy*) ;
 int bnx2x_8073_resolve_fc (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 scalar_t__ bnx2x_8073_xaui_wa (struct bnx2x*,struct bnx2x_phy*) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_10G_an_resolve (struct bnx2x*,struct bnx2x_phy*,struct link_vars*) ;

__attribute__((used)) static u8 bnx2x_8073_read_status(struct bnx2x_phy *phy,
     struct link_params *params,
     struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u8 link_up = 0;
 u16 val1, val2;
 u16 link_status = 0;
 u16 an1000_status = 0;

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);

 DP(NETIF_MSG_LINK, "8703 LASI status 0x%x\n", val1);


 bnx2x_cl45_read(bp, phy,
   MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val1);
 DP(NETIF_MSG_LINK, "807x PCS status 0x%x->0x%x\n", val2, val1);

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_M8051_MSGOUT_REG, &val1);


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

 DP(NETIF_MSG_LINK, "KR 0x9003 0x%x\n", val2);


 bnx2x_cl45_read(bp, phy,
   MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val2);
 DP(NETIF_MSG_LINK, "KR PCS status 0x%x\n", val2);

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
 link_up = ((val1 & 4) == 4);
 DP(NETIF_MSG_LINK, "PMA_REG_STATUS=0x%x\n", val1);

 if (link_up &&
      ((phy->req_line_speed != SPEED_10000))) {
  if (bnx2x_8073_xaui_wa(bp, phy) != 0)
   return 0;
 }
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &an1000_status);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &an1000_status);


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
 DP(NETIF_MSG_LINK, "KR PMA status 0x%x->0x%x,"
     "an_link_status=0x%x\n", val2, val1, an1000_status);

 link_up = (((val1 & 4) == 4) || (an1000_status & (1<<1)));
 if (link_up && bnx2x_8073_is_snr_needed(bp, phy)) {




  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_PLL_BANDWIDTH,
     0x26BC);


  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CDR_BANDWIDTH,
     0x0333);
 }
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_8073_SPEED_LINK_STATUS,
   &link_status);


 if ((link_status & (1<<2)) && (!(link_status & (1<<15)))) {
  link_up = 1;
  vars->line_speed = SPEED_10000;
  DP(NETIF_MSG_LINK, "port %x: External link up in 10G\n",
      params->port);
 } else if ((link_status & (1<<1)) && (!(link_status & (1<<14)))) {
  link_up = 1;
  vars->line_speed = SPEED_2500;
  DP(NETIF_MSG_LINK, "port %x: External link up in 2.5G\n",
      params->port);
 } else if ((link_status & (1<<0)) && (!(link_status & (1<<13)))) {
  link_up = 1;
  vars->line_speed = SPEED_1000;
  DP(NETIF_MSG_LINK, "port %x: External link up in 1G\n",
      params->port);
 } else {
  link_up = 0;
  DP(NETIF_MSG_LINK, "port %x: External link is down\n",
      params->port);
 }

 if (link_up) {

  if (params->lane_config &
      PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED) {

   bnx2x_cl45_read(bp, phy,
     MDIO_XS_DEVAD,
     MDIO_XS_REG_8073_RX_CTRL_PCIE, &val1);



   if (vars->line_speed == SPEED_1000) {
    DP(NETIF_MSG_LINK, "Swapping 1G polarity for"
           "the 8073\n");
    val1 |= (1<<3);
   } else
    val1 &= ~(1<<3);

   bnx2x_cl45_write(bp, phy,
      MDIO_XS_DEVAD,
      MDIO_XS_REG_8073_RX_CTRL_PCIE,
      val1);
  }
  bnx2x_ext_phy_10G_an_resolve(bp, phy, vars);
  bnx2x_8073_resolve_fc(phy, params, vars);
  vars->duplex = DUPLEX_FULL;
 }

 if (vars->link_status & LINK_STATUS_AUTO_NEGOTIATE_COMPLETE) {
  bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
    MDIO_AN_REG_LP_AUTO_NEG2, &val1);

  if (val1 & (1<<5))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE;
  if (val1 & (1<<7))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;
 }

 return link_up;
}
