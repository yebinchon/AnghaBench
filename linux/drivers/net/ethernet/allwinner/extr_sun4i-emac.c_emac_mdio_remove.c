
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int phy_disconnect (int ) ;

__attribute__((used)) static void emac_mdio_remove(struct net_device *dev)
{
 phy_disconnect(dev->phydev);
}
