
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int ENXIO ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int gmac_nway_reset(struct net_device *netdev)
{
 if (!netdev->phydev)
  return -ENXIO;
 return phy_start_aneg(netdev->phydev);
}
