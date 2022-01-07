
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nixge_priv {scalar_t__ mii_bus; int phy_node; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int mdiobus_unregister (scalar_t__) ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int nixge_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct nixge_priv *priv = netdev_priv(ndev);

 unregister_netdev(ndev);

 if (of_phy_is_fixed_link(pdev->dev.of_node))
  of_phy_deregister_fixed_link(pdev->dev.of_node);
 of_node_put(priv->phy_node);

 if (priv->mii_bus)
  mdiobus_unregister(priv->mii_bus);

 free_netdev(ndev);

 return 0;
}
