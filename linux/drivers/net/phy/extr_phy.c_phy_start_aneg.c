
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int lock; int drv; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int EIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_check_link_status (struct phy_device*) ;
 int phy_config_aneg (struct phy_device*) ;
 scalar_t__ phy_is_started (struct phy_device*) ;
 int phy_sanitize_settings (struct phy_device*) ;

int phy_start_aneg(struct phy_device *phydev)
{
 int err;

 if (!phydev->drv)
  return -EIO;

 mutex_lock(&phydev->lock);

 if (AUTONEG_DISABLE == phydev->autoneg)
  phy_sanitize_settings(phydev);

 err = phy_config_aneg(phydev);
 if (err < 0)
  goto out_unlock;

 if (phy_is_started(phydev))
  err = phy_check_link_status(phydev);
out_unlock:
 mutex_unlock(&phydev->lock);

 return err;
}
