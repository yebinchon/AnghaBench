
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct mii_bus {int dummy; } ;
struct b44 {struct mii_bus* mii_bus; struct net_device* dev; } ;


 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int phy_disconnect (int ) ;

__attribute__((used)) static void b44_unregister_phy_one(struct b44 *bp)
{
 struct net_device *dev = bp->dev;
 struct mii_bus *mii_bus = bp->mii_bus;

 phy_disconnect(dev->phydev);
 mdiobus_unregister(mii_bus);
 mdiobus_free(mii_bus);
}
