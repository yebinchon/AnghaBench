
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; } ;


 int MII_M1011_PHY_STATUS ;
 int REGISTER_LINK_STATUS ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_update_link(struct phy_device *phydev, int fiber)
{
 int status;




 if (fiber) {
  status = phy_read(phydev, MII_M1011_PHY_STATUS);
  if (status < 0)
   return status;

  if ((status & REGISTER_LINK_STATUS) == 0)
   phydev->link = 0;
  else
   phydev->link = 1;
 } else {
  return genphy_update_link(phydev);
 }

 return 0;
}
