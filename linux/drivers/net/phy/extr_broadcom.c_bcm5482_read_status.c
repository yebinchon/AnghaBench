
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; int duplex; int speed; scalar_t__ link; } ;


 int DUPLEX_FULL ;
 int PHY_BCM_FLAGS_MODE_1000BX ;
 int SPEED_1000 ;
 int genphy_read_status (struct phy_device*) ;

__attribute__((used)) static int bcm5482_read_status(struct phy_device *phydev)
{
 int err;

 err = genphy_read_status(phydev);

 if (phydev->dev_flags & PHY_BCM_FLAGS_MODE_1000BX) {




  if (phydev->link) {
   phydev->speed = SPEED_1000;
   phydev->duplex = DUPLEX_FULL;
  }
 }

 return err;
}
