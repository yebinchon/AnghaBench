
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; scalar_t__ link; int supported; } ;


 int ETHTOOL_LINK_MODE_FIBRE_BIT ;
 int MII_MARVELL_COPPER_PAGE ;
 int MII_MARVELL_FIBER_PAGE ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 scalar_t__ linkmode_test_bit (int ,int ) ;
 int marvell_read_status_page (struct phy_device*,int ) ;
 int marvell_set_page (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_read_status(struct phy_device *phydev)
{
 int err;


 if (linkmode_test_bit(ETHTOOL_LINK_MODE_FIBRE_BIT,
         phydev->supported) &&
     phydev->interface != PHY_INTERFACE_MODE_SGMII) {
  err = marvell_set_page(phydev, MII_MARVELL_FIBER_PAGE);
  if (err < 0)
   goto error;

  err = marvell_read_status_page(phydev, MII_MARVELL_FIBER_PAGE);
  if (err < 0)
   goto error;
  if (phydev->link)
   return 0;


  err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
  if (err < 0)
   goto error;
 }

 return marvell_read_status_page(phydev, MII_MARVELL_COPPER_PAGE);

error:
 marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 return err;
}
