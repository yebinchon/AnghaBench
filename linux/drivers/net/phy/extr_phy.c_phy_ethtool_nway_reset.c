
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int drv; } ;
struct net_device {struct phy_device* phydev; } ;


 int EIO ;
 int ENODEV ;
 int phy_restart_aneg (struct phy_device*) ;

int phy_ethtool_nway_reset(struct net_device *ndev)
{
 struct phy_device *phydev = ndev->phydev;

 if (!phydev)
  return -ENODEV;

 if (!phydev->drv)
  return -EIO;

 return phy_restart_aneg(phydev);
}
