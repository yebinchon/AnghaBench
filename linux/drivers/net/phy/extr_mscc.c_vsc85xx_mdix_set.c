
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int DISABLE_HP_AUTO_MDIX_MASK ;
 int DISABLE_PAIR_SWAP_CORR_MASK ;
 int DISABLE_POLARITY_CORR_MASK ;
 scalar_t__ ETH_TP_MDI ;
 scalar_t__ ETH_TP_MDI_X ;
 int FORCE_MDI_CROSSOVER_MASK ;
 int FORCE_MDI_CROSSOVER_MDI ;
 int FORCE_MDI_CROSSOVER_MDIX ;
 int MSCC_PHY_BYPASS_CONTROL ;
 int MSCC_PHY_EXT_MODE_CNTL ;
 int MSCC_PHY_PAGE_EXTENDED ;
 int genphy_restart_aneg (struct phy_device*) ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc85xx_mdix_set(struct phy_device *phydev, u8 mdix)
{
 int rc;
 u16 reg_val;

 reg_val = phy_read(phydev, MSCC_PHY_BYPASS_CONTROL);
 if (mdix == ETH_TP_MDI || mdix == ETH_TP_MDI_X) {
  reg_val |= (DISABLE_PAIR_SWAP_CORR_MASK |
       DISABLE_POLARITY_CORR_MASK |
       DISABLE_HP_AUTO_MDIX_MASK);
 } else {
  reg_val &= ~(DISABLE_PAIR_SWAP_CORR_MASK |
        DISABLE_POLARITY_CORR_MASK |
        DISABLE_HP_AUTO_MDIX_MASK);
 }
 rc = phy_write(phydev, MSCC_PHY_BYPASS_CONTROL, reg_val);
 if (rc)
  return rc;

 reg_val = 0;

 if (mdix == ETH_TP_MDI)
  reg_val = FORCE_MDI_CROSSOVER_MDI;
 else if (mdix == ETH_TP_MDI_X)
  reg_val = FORCE_MDI_CROSSOVER_MDIX;

 rc = phy_modify_paged(phydev, MSCC_PHY_PAGE_EXTENDED,
         MSCC_PHY_EXT_MODE_CNTL, FORCE_MDI_CROSSOVER_MASK,
         reg_val);
 if (rc < 0)
  return rc;

 return genphy_restart_aneg(phydev);
}
