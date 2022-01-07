
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;


 int phy_disconnect (scalar_t__) ;

__attribute__((used)) static void gmac_uninit(struct net_device *netdev)
{
 if (netdev->phydev)
  phy_disconnect(netdev->phydev);
}
