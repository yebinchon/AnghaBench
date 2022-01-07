
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fman_mac {int pcsphy; } ;
struct fixed_phy_status {int speed; int duplex; } ;


 int IF_MODE_SGMII_DUPLEX_HALF ;
 int IF_MODE_SGMII_EN ;
 int IF_MODE_SGMII_SPEED_100M ;
 int IF_MODE_SGMII_SPEED_1G ;
 int IF_MODE_USE_SGMII_AN ;
 int LINK_TMR_H ;
 int LINK_TMR_L ;
 int MDIO_SGMII_DEV_ABIL_SGMII ;
 int MDIO_SGMII_DEV_ABIL_SGMII_MODE ;
 int MDIO_SGMII_IF_MODE ;
 int MDIO_SGMII_LINK_TMR_H ;
 int MDIO_SGMII_LINK_TMR_L ;
 int SGMII_CR_AN_EN ;
 int SGMII_CR_DEF_VAL ;
 int SGMII_CR_RESTART_AN ;
 scalar_t__ WARN_ON (int) ;
 int phy_write (int ,int,int) ;

__attribute__((used)) static void setup_sgmii_internal_phy(struct fman_mac *memac,
         struct fixed_phy_status *fixed_link)
{
 u16 tmp_reg16;

 if (WARN_ON(!memac->pcsphy))
  return;


 tmp_reg16 = IF_MODE_SGMII_EN;
 if (!fixed_link)

  tmp_reg16 |= IF_MODE_USE_SGMII_AN;
 else {
  switch (fixed_link->speed) {
  case 10:

  break;
  case 100:
   tmp_reg16 |= IF_MODE_SGMII_SPEED_100M;
  break;
  case 1000:
  default:
   tmp_reg16 |= IF_MODE_SGMII_SPEED_1G;
  break;
  }
  if (!fixed_link->duplex)
   tmp_reg16 |= IF_MODE_SGMII_DUPLEX_HALF;
 }
 phy_write(memac->pcsphy, MDIO_SGMII_IF_MODE, tmp_reg16);


 tmp_reg16 = MDIO_SGMII_DEV_ABIL_SGMII_MODE;
 phy_write(memac->pcsphy, MDIO_SGMII_DEV_ABIL_SGMII, tmp_reg16);
 phy_write(memac->pcsphy, MDIO_SGMII_LINK_TMR_H, LINK_TMR_H);
 phy_write(memac->pcsphy, MDIO_SGMII_LINK_TMR_L, LINK_TMR_L);

 if (!fixed_link)

  tmp_reg16 = SGMII_CR_DEF_VAL | SGMII_CR_RESTART_AN;
 else

  tmp_reg16 = SGMII_CR_DEF_VAL & ~SGMII_CR_AN_EN;
 phy_write(memac->pcsphy, 0x0, tmp_reg16);
}
