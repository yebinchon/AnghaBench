
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct mv643xx_eth_private {struct net_device* dev; int clk; int tx_timeout_task; } ;


 int IS_ERR (int ) ;
 int cancel_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 struct mv643xx_eth_private* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mv643xx_eth_remove(struct platform_device *pdev)
{
 struct mv643xx_eth_private *mp = platform_get_drvdata(pdev);
 struct net_device *dev = mp->dev;

 unregister_netdev(mp->dev);
 if (dev->phydev)
  phy_disconnect(dev->phydev);
 cancel_work_sync(&mp->tx_timeout_task);

 if (!IS_ERR(mp->clk))
  clk_disable_unprepare(mp->clk);

 free_netdev(mp->dev);

 return 0;
}
