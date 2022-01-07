
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct temac_local {scalar_t__ phy_node; TYPE_1__* dev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 struct temac_local* netdev_priv (struct net_device*) ;
 int of_node_put (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int temac_attr_group ;
 int temac_mdio_teardown (struct temac_local*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int temac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct temac_local *lp = netdev_priv(ndev);

 unregister_netdev(ndev);
 sysfs_remove_group(&lp->dev->kobj, &temac_attr_group);
 if (lp->phy_node)
  of_node_put(lp->phy_node);
 temac_mdio_teardown(lp);
 return 0;
}
