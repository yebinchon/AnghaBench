
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int lp_advertising; scalar_t__ asym_pause; scalar_t__ pause; int speed; int duplex; } ;


 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int MII_BMCR ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int linkmode_zero (int ) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_read_status_page_fixed(struct phy_device *phydev)
{
 int bmcr = phy_read(phydev, MII_BMCR);

 if (bmcr < 0)
  return bmcr;

 if (bmcr & BMCR_FULLDPLX)
  phydev->duplex = DUPLEX_FULL;
 else
  phydev->duplex = DUPLEX_HALF;

 if (bmcr & BMCR_SPEED1000)
  phydev->speed = SPEED_1000;
 else if (bmcr & BMCR_SPEED100)
  phydev->speed = SPEED_100;
 else
  phydev->speed = SPEED_10;

 phydev->pause = 0;
 phydev->asym_pause = 0;
 linkmode_zero(phydev->lp_advertising);

 return 0;
}
