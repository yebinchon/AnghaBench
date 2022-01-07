
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MDIO_AN_TX_VEND_INT_MASK2 ;
 int MDIO_AN_TX_VEND_INT_MASK2_LINK ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_VEND1 ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int VEND1_GLOBAL_INT_STD_MASK ;
 int VEND1_GLOBAL_INT_STD_MASK_ALL ;
 int VEND1_GLOBAL_INT_VEND_MASK ;
 int VEND1_GLOBAL_INT_VEND_MASK_AN ;
 int VEND1_GLOBAL_INT_VEND_MASK_GLOBAL3 ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int aqr_config_intr(struct phy_device *phydev)
{
 bool en = phydev->interrupts == PHY_INTERRUPT_ENABLED;
 int err;

 err = phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_TX_VEND_INT_MASK2,
       en ? MDIO_AN_TX_VEND_INT_MASK2_LINK : 0);
 if (err < 0)
  return err;

 err = phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_INT_STD_MASK,
       en ? VEND1_GLOBAL_INT_STD_MASK_ALL : 0);
 if (err < 0)
  return err;

 return phy_write_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_INT_VEND_MASK,
        en ? VEND1_GLOBAL_INT_VEND_MASK_GLOBAL3 |
        VEND1_GLOBAL_INT_VEND_MASK_AN : 0);
}
