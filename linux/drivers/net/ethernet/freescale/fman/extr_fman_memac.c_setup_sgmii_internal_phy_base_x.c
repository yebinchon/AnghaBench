
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fman_mac {int pcsphy; } ;


 int LINK_TMR_H_BASEX ;
 int LINK_TMR_L_BASEX ;
 int MDIO_SGMII_DEV_ABIL_BASEX_MODE ;
 int MDIO_SGMII_DEV_ABIL_SGMII ;
 int MDIO_SGMII_LINK_TMR_H ;
 int MDIO_SGMII_LINK_TMR_L ;
 int SGMII_CR_DEF_VAL ;
 int SGMII_CR_RESTART_AN ;
 int phy_write (int ,int,int) ;

__attribute__((used)) static void setup_sgmii_internal_phy_base_x(struct fman_mac *memac)
{
 u16 tmp_reg16;


 tmp_reg16 = MDIO_SGMII_DEV_ABIL_BASEX_MODE;
 phy_write(memac->pcsphy, MDIO_SGMII_DEV_ABIL_SGMII, tmp_reg16);
 phy_write(memac->pcsphy, MDIO_SGMII_LINK_TMR_H, LINK_TMR_H_BASEX);
 phy_write(memac->pcsphy, MDIO_SGMII_LINK_TMR_L, LINK_TMR_L_BASEX);


 tmp_reg16 = SGMII_CR_DEF_VAL | SGMII_CR_RESTART_AN;
 phy_write(memac->pcsphy, 0x0, tmp_reg16);
}
