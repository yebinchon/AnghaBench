
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct axienet_local {int * phy_node; scalar_t__ clk; scalar_t__ phylink; } ;


 int axienet_mdio_teardown (struct axienet_local*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int free_netdev (struct net_device*) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 int of_node_put (int *) ;
 int phylink_destroy (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int axienet_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct axienet_local *lp = netdev_priv(ndev);

 unregister_netdev(ndev);

 if (lp->phylink)
  phylink_destroy(lp->phylink);

 axienet_mdio_teardown(lp);

 if (lp->clk)
  clk_disable_unprepare(lp->clk);

 of_node_put(lp->phy_node);
 lp->phy_node = ((void*)0);

 free_netdev(ndev);

 return 0;
}
