
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int lock; int mdix_ctrl; } ;


 int ETH_TP_MDI_AUTO ;
 int MSCC_PHY_PAGE_EXTENDED_2 ;
 int MSCC_PHY_RGMII_CNTL ;
 int RGMII_RX_CLK_DELAY_1_1_NS ;
 int RGMII_RX_CLK_DELAY_MASK ;
 int RGMII_RX_CLK_DELAY_POS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int) ;

__attribute__((used)) static int vsc85xx_default_config(struct phy_device *phydev)
{
 int rc;
 u16 reg_val;

 phydev->mdix_ctrl = ETH_TP_MDI_AUTO;
 mutex_lock(&phydev->lock);

 reg_val = RGMII_RX_CLK_DELAY_1_1_NS << RGMII_RX_CLK_DELAY_POS;

 rc = phy_modify_paged(phydev, MSCC_PHY_PAGE_EXTENDED_2,
         MSCC_PHY_RGMII_CNTL, RGMII_RX_CLK_DELAY_MASK,
         reg_val);

 mutex_unlock(&phydev->lock);

 return rc;
}
