
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; } ;


 int MII_COMMSTAT ;
 int MII_COMMSTAT_LINK_UP ;
 int genphy_update_link (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int tja11xx_read_status(struct phy_device *phydev)
{
 int ret;

 ret = genphy_update_link(phydev);
 if (ret)
  return ret;

 if (phydev->link) {
  ret = phy_read(phydev, MII_COMMSTAT);
  if (ret < 0)
   return ret;

  if (!(ret & MII_COMMSTAT_LINK_UP))
   phydev->link = 0;
 }

 return 0;
}
