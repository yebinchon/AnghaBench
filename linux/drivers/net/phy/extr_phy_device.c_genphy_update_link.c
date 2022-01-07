
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int autoneg_complete; scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANRESTART ;
 int BMSR_ANEGCOMPLETE ;
 int BMSR_LSTATUS ;
 int MII_BMCR ;
 int MII_BMSR ;
 int phy_polling_mode (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;

int genphy_update_link(struct phy_device *phydev)
{
 int status = 0, bmcr;

 bmcr = phy_read(phydev, MII_BMCR);
 if (bmcr < 0)
  return bmcr;




 if (bmcr & BMCR_ANRESTART)
  goto done;





 if (!phy_polling_mode(phydev)) {
  status = phy_read(phydev, MII_BMSR);
  if (status < 0)
   return status;
  else if (status & BMSR_LSTATUS)
   goto done;
 }


 status = phy_read(phydev, MII_BMSR);
 if (status < 0)
  return status;
done:
 phydev->link = status & BMSR_LSTATUS ? 1 : 0;
 phydev->autoneg_complete = status & BMSR_ANEGCOMPLETE ? 1 : 0;




 if (phydev->autoneg == AUTONEG_ENABLE && !phydev->autoneg_complete)
  phydev->link = 0;

 return 0;
}
