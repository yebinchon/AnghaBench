
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int req_line_speed; scalar_t__ req_duplex; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 scalar_t__ DUPLEX_FULL ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_RX66_CONTROL ;
 int MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 ;
 int MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 ;
 int NETIF_MSG_LINK ;



 int SPEED_AUTO_NEG ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_read_and_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_warpcore_set_lpi_passthrough (struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static void bnx2x_warpcore_set_sgmii_speed(struct bnx2x_phy *phy,
        struct link_params *params,
        u8 fiber_mode,
        u8 always_autoneg)
{
 struct bnx2x *bp = params->bp;
 u16 val16, digctrl_kx1, digctrl_kx2;


 bnx2x_cl45_read_and_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_RX66_CONTROL, ~(3<<13));

 bnx2x_warpcore_set_lpi_passthrough(phy, params);

 if (always_autoneg || phy->req_line_speed == SPEED_AUTO_NEG) {

  bnx2x_cl45_read_or_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
      0x1000);
  DP(NETIF_MSG_LINK, "set SGMII AUTONEG\n");
 } else {
  bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
  val16 &= 0xcebf;
  switch (phy->req_line_speed) {
  case 130:
   break;
  case 129:
   val16 |= 0x2000;
   break;
  case 128:
   val16 |= 0x0040;
   break;
  default:
   DP(NETIF_MSG_LINK,
      "Speed not supported: 0x%x\n", phy->req_line_speed);
   return;
  }

  if (phy->req_duplex == DUPLEX_FULL)
   val16 |= 0x0100;

  bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, val16);

  DP(NETIF_MSG_LINK, "set SGMII force speed %d\n",
          phy->req_line_speed);
  bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
  DP(NETIF_MSG_LINK, "  (readback) %x\n", val16);
 }


 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, &digctrl_kx1);
 if (fiber_mode)
  digctrl_kx1 = 1;
 else
  digctrl_kx1 &= 0xff4a;

 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
   digctrl_kx1);


 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, &digctrl_kx2);
 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
   (digctrl_kx2 & ~(1<<2)));


 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
   (digctrl_kx2 | (1<<2)));


 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
   (digctrl_kx1 | 0x10));
}
