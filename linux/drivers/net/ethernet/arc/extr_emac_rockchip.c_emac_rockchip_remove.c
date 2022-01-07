
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_priv_data {int macclk; TYPE_1__* soc_data; scalar_t__ regulator; int refclk; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ need_div_macclk; } ;


 int arc_emac_remove (struct net_device*) ;
 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 struct rockchip_priv_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int emac_rockchip_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct rockchip_priv_data *priv = netdev_priv(ndev);
 int err;

 err = arc_emac_remove(ndev);

 clk_disable_unprepare(priv->refclk);

 if (priv->regulator)
  regulator_disable(priv->regulator);

 if (priv->soc_data->need_div_macclk)
  clk_disable_unprepare(priv->macclk);

 free_netdev(ndev);
 return err;
}
