
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_88E1318S_PHY_LED_TCR ;
 int MII_88E1318S_PHY_LED_TCR_FORCE_INT ;
 int MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW ;
 int MII_88E1318S_PHY_LED_TCR_INTn_ENABLE ;
 int MII_MARVELL_LED_PAGE ;
 int marvell_config_init (struct phy_device*) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int) ;

__attribute__((used)) static int m88e1318_config_init(struct phy_device *phydev)
{
 if (phy_interrupt_is_valid(phydev)) {
  int err = phy_modify_paged(
   phydev, MII_MARVELL_LED_PAGE,
   MII_88E1318S_PHY_LED_TCR,
   MII_88E1318S_PHY_LED_TCR_FORCE_INT,
   MII_88E1318S_PHY_LED_TCR_INTn_ENABLE |
   MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW);
  if (err < 0)
   return err;
 }

 return marvell_config_init(phydev);
}
