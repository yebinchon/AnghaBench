
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5100_priv {int restart_work; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;


 struct w5100_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int w5100_restart (struct net_device*) ;

__attribute__((used)) static void w5100_tx_timeout(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 if (priv->ops->may_sleep)
  schedule_work(&priv->restart_work);
 else
  w5100_restart(ndev);
}
