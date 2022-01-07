
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int clk_ptp_ref; } ;


 int clk_disable_unprepare (int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void stmmac_hw_teardown(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 clk_disable_unprepare(priv->plat->clk_ptp_ref);
}
