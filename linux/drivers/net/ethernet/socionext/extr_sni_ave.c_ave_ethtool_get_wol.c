
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; scalar_t__ supported; } ;


 int phy_ethtool_get_wol (scalar_t__,struct ethtool_wolinfo*) ;

__attribute__((used)) static void ave_ethtool_get_wol(struct net_device *ndev,
    struct ethtool_wolinfo *wol)
{
 wol->supported = 0;
 wol->wolopts = 0;

 if (ndev->phydev)
  phy_ethtool_get_wol(ndev->phydev, wol);
}
