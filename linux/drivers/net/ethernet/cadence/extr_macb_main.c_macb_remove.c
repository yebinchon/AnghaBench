
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int * phydev; } ;
struct macb {int phy_node; int tsu_clk; int rx_clk; int pclk; int hclk; int tx_clk; int mii_bus; } ;
struct device_node {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_unregister (int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct macb* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int phy_disconnect (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_dont_use_autosuspend (TYPE_1__*) ;
 int pm_runtime_set_suspended (TYPE_1__*) ;
 int pm_runtime_suspended (TYPE_1__*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int macb_remove(struct platform_device *pdev)
{
 struct net_device *dev;
 struct macb *bp;
 struct device_node *np = pdev->dev.of_node;

 dev = platform_get_drvdata(pdev);

 if (dev) {
  bp = netdev_priv(dev);
  if (dev->phydev)
   phy_disconnect(dev->phydev);
  mdiobus_unregister(bp->mii_bus);
  if (np && of_phy_is_fixed_link(np))
   of_phy_deregister_fixed_link(np);
  dev->phydev = ((void*)0);
  mdiobus_free(bp->mii_bus);

  unregister_netdev(dev);
  pm_runtime_disable(&pdev->dev);
  pm_runtime_dont_use_autosuspend(&pdev->dev);
  if (!pm_runtime_suspended(&pdev->dev)) {
   clk_disable_unprepare(bp->tx_clk);
   clk_unregister(bp->tx_clk);
   clk_disable_unprepare(bp->hclk);
   clk_disable_unprepare(bp->pclk);
   clk_disable_unprepare(bp->rx_clk);
   clk_disable_unprepare(bp->tsu_clk);
   pm_runtime_set_suspended(&pdev->dev);
  }
  of_node_put(bp->phy_node);
  free_netdev(dev);
 }

 return 0;
}
