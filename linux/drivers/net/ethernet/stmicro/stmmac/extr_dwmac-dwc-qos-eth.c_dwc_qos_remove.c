
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stmmac_clk; int pclk; } ;


 int clk_disable_unprepare (int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dwc_qos_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct stmmac_priv *priv = netdev_priv(ndev);

 clk_disable_unprepare(priv->plat->pclk);
 clk_disable_unprepare(priv->plat->stmmac_clk);

 return 0;
}
