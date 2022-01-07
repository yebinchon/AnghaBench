
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_local {int * phy_node; int * mii_bus; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int mdiobus_free (int *) ;
 int mdiobus_unregister (int *) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int of_node_put (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int xemaclite_of_remove(struct platform_device *of_dev)
{
 struct net_device *ndev = platform_get_drvdata(of_dev);

 struct net_local *lp = netdev_priv(ndev);


 if (lp->mii_bus) {
  mdiobus_unregister(lp->mii_bus);
  mdiobus_free(lp->mii_bus);
  lp->mii_bus = ((void*)0);
 }

 unregister_netdev(ndev);

 of_node_put(lp->phy_node);
 lp->phy_node = ((void*)0);

 free_netdev(ndev);

 return 0;
}
