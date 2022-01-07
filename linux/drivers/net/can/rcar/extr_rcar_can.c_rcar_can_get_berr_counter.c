
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_can_priv {int clk; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
struct can_berr_counter {void* rxerr; void* txerr; } ;
struct TYPE_2__ {int recr; int tecr; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct rcar_can_priv* netdev_priv (struct net_device const*) ;
 void* readb (int *) ;

__attribute__((used)) static int rcar_can_get_berr_counter(const struct net_device *dev,
         struct can_berr_counter *bec)
{
 struct rcar_can_priv *priv = netdev_priv(dev);
 int err;

 err = clk_prepare_enable(priv->clk);
 if (err)
  return err;
 bec->txerr = readb(&priv->regs->tecr);
 bec->rxerr = readb(&priv->regs->recr);
 clk_disable_unprepare(priv->clk);
 return 0;
}
