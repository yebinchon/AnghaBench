
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int offload; int clk; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int can_rx_offload_del (int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int free_candev (struct net_device*) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int ti_hecc_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct ti_hecc_priv *priv = netdev_priv(ndev);

 unregister_candev(ndev);
 clk_disable_unprepare(priv->clk);
 clk_put(priv->clk);
 can_rx_offload_del(&priv->offload);
 free_candev(ndev);

 return 0;
}
