
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int mac_clk; } ;


 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int bcm_enetsw_remove(struct platform_device *pdev)
{
 struct bcm_enet_priv *priv;
 struct net_device *dev;


 dev = platform_get_drvdata(pdev);
 priv = netdev_priv(dev);
 unregister_netdev(dev);

 clk_disable_unprepare(priv->mac_clk);

 free_netdev(dev);
 return 0;
}
