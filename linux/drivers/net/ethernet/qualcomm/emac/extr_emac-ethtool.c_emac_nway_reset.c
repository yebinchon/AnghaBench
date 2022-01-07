
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 int ENODEV ;
 int genphy_restart_aneg (struct phy_device*) ;

__attribute__((used)) static int emac_nway_reset(struct net_device *netdev)
{
 struct phy_device *phydev = netdev->phydev;

 if (!phydev)
  return -ENODEV;

 return genphy_restart_aneg(phydev);
}
