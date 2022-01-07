
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; scalar_t__ link; scalar_t__ loopback_enabled; int lock; } ;


 scalar_t__ PHY_NOLINK ;
 scalar_t__ PHY_RUNNING ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int phy_link_down (struct phy_device*,int) ;
 int phy_link_up (struct phy_device*) ;
 int phy_read_status (struct phy_device*) ;

__attribute__((used)) static int phy_check_link_status(struct phy_device *phydev)
{
 int err;

 WARN_ON(!mutex_is_locked(&phydev->lock));




 if (phydev->loopback_enabled)
  return 0;

 err = phy_read_status(phydev);
 if (err)
  return err;

 if (phydev->link && phydev->state != PHY_RUNNING) {
  phydev->state = PHY_RUNNING;
  phy_link_up(phydev);
 } else if (!phydev->link && phydev->state != PHY_NOLINK) {
  phydev->state = PHY_NOLINK;
  phy_link_down(phydev, 1);
 }

 return 0;
}
