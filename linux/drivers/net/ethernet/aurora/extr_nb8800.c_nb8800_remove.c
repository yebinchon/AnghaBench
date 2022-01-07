
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct nb8800_priv {int clk; int mii_bus; int phy_node; } ;


 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_unregister (int ) ;
 int nb8800_dma_free (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int nb8800_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct nb8800_priv *priv = netdev_priv(ndev);

 unregister_netdev(ndev);
 if (of_phy_is_fixed_link(pdev->dev.of_node))
  of_phy_deregister_fixed_link(pdev->dev.of_node);
 of_node_put(priv->phy_node);

 mdiobus_unregister(priv->mii_bus);

 clk_disable_unprepare(priv->clk);

 nb8800_dma_free(ndev);
 free_netdev(ndev);

 return 0;
}
