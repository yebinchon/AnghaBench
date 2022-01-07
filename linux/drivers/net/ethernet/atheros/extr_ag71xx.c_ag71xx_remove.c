
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ag71xx {int clk_eth; } ;


 int ag71xx_mdio_remove (struct ag71xx*) ;
 int clk_disable_unprepare (int ) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ag71xx_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct ag71xx *ag;

 if (!ndev)
  return 0;

 ag = netdev_priv(ndev);
 unregister_netdev(ndev);
 ag71xx_mdio_remove(ag);
 clk_disable_unprepare(ag->clk_eth);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
