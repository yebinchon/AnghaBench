
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_FIBRE_BIT ;
 int MII_MARVELL_COPPER_PAGE ;
 int MII_MARVELL_FIBER_PAGE ;
 int genphy_resume (struct phy_device*) ;
 int linkmode_test_bit (int ,int ) ;
 int marvell_set_page (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_resume(struct phy_device *phydev)
{
 int err;


 if (!linkmode_test_bit(ETHTOOL_LINK_MODE_FIBRE_BIT,
          phydev->supported)) {
  err = marvell_set_page(phydev, MII_MARVELL_FIBER_PAGE);
  if (err < 0)
   goto error;


  err = genphy_resume(phydev);
  if (err < 0)
   goto error;


  err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
  if (err < 0)
   goto error;
 }


 return genphy_resume(phydev);

error:
 marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 return err;
}
