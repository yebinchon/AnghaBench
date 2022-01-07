
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {int line_speed; scalar_t__ duplex; int link_status; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int,...) ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_100T4_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE ;
 int LINK_STATUS_LINK_PARTNER_10THD_CAPABLE ;
 int LINK_STATUS_PARALLEL_DETECTION_USED ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_1000T_STATUS ;
 int MDIO_AN_REG_8481_EXPANSION_REG_ACCESS ;
 int MDIO_AN_REG_8481_EXPANSION_REG_RD_RW ;
 int MDIO_AN_REG_8481_LEGACY_AN_EXPANSION ;
 int MDIO_AN_REG_8481_LEGACY_MII_STATUS ;
 int MDIO_AN_REG_CL37_FC_LP ;
 int MDIO_AN_REG_MASTER_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8481_PMD_SIGNAL ;
 int NETIF_MSG_LINK ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_eee_an_resolve (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_ext_phy_10G_an_resolve (struct bnx2x*,struct bnx2x_phy*,struct link_vars*) ;
 int bnx2x_ext_phy_resolve_fc (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 scalar_t__ bnx2x_is_8483x_8485x (struct bnx2x_phy*) ;

__attribute__((used)) static u8 bnx2x_848xx_read_status(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u16 val, val1, val2;
 u8 link_up = 0;




 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, 0xFFFA, &val1);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_8481_PMD_SIGNAL,
   &val2);
 DP(NETIF_MSG_LINK, "BCM848xx: PMD_SIGNAL 1.a811 = 0x%x\n", val2);


 if (val2 & (1<<11)) {
  vars->line_speed = SPEED_10000;
  vars->duplex = DUPLEX_FULL;
  link_up = 1;
  bnx2x_ext_phy_10G_an_resolve(bp, phy, vars);
 } else {
  u16 legacy_status, legacy_speed;


  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD,
     MDIO_AN_REG_8481_EXPANSION_REG_ACCESS, 0xf42);


  bnx2x_cl45_read(bp, phy,
    MDIO_AN_DEVAD,
    MDIO_AN_REG_8481_EXPANSION_REG_RD_RW,
    &legacy_status);

  DP(NETIF_MSG_LINK, "Legacy speed status = 0x%x\n",
     legacy_status);
  link_up = ((legacy_status & (1<<11)) == (1<<11));
  legacy_speed = (legacy_status & (3<<9));
  if (legacy_speed == (0<<9))
   vars->line_speed = SPEED_10;
  else if (legacy_speed == (1<<9))
   vars->line_speed = SPEED_100;
  else if (legacy_speed == (2<<9))
   vars->line_speed = SPEED_1000;
  else {
   vars->line_speed = 0;
   link_up = 0;
  }

  if (link_up) {
   if (legacy_status & (1<<8))
    vars->duplex = DUPLEX_FULL;
   else
    vars->duplex = DUPLEX_HALF;

   DP(NETIF_MSG_LINK,
      "Link is up in %dMbps, is_duplex_full= %d\n",
      vars->line_speed,
      (vars->duplex == DUPLEX_FULL));

   bnx2x_cl45_read(bp, phy,
     MDIO_AN_DEVAD,
     MDIO_AN_REG_8481_LEGACY_MII_STATUS,
     &val);
   if (val & (1<<5))
    vars->link_status |=
     LINK_STATUS_AUTO_NEGOTIATE_COMPLETE;
   bnx2x_cl45_read(bp, phy,
     MDIO_AN_DEVAD,
     MDIO_AN_REG_8481_LEGACY_AN_EXPANSION,
     &val);
   if ((val & (1<<0)) == 0)
    vars->link_status |=
     LINK_STATUS_PARALLEL_DETECTION_USED;
  }
 }
 if (link_up) {
  DP(NETIF_MSG_LINK, "BCM848x3: link speed is %d\n",
      vars->line_speed);
  bnx2x_ext_phy_resolve_fc(phy, params, vars);


  bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
    MDIO_AN_REG_CL37_FC_LP, &val);
  if (val & (1<<5))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10THD_CAPABLE;
  if (val & (1<<6))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE;
  if (val & (1<<7))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE;
  if (val & (1<<8))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE;
  if (val & (1<<9))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_100T4_CAPABLE;

  bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
    MDIO_AN_REG_1000T_STATUS, &val);

  if (val & (1<<10))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE;
  if (val & (1<<11))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE;

  bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
    MDIO_AN_REG_MASTER_STATUS, &val);

  if (val & (1<<11))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;


  if (bnx2x_is_8483x_8485x(phy))
   bnx2x_eee_an_resolve(phy, params, vars);
 }

 return link_up;
}
