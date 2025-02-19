
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5100_priv {int promisc; int setrx_work; TYPE_1__* ops; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;


 int IFF_PROMISC ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int w5100_hw_start (struct w5100_priv*) ;

__attribute__((used)) static void w5100_set_rx_mode(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);
 bool set_promisc = (ndev->flags & IFF_PROMISC) != 0;

 if (priv->promisc != set_promisc) {
  priv->promisc = set_promisc;

  if (priv->ops->may_sleep)
   schedule_work(&priv->setrx_work);
  else
   w5100_hw_start(priv);
 }
}
