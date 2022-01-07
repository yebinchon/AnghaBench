
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct pch_can_priv {TYPE_2__ can; TYPE_1__* dev; int napi; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int CAN_STATE_STOPPED ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pch_can_release (struct pch_can_priv*) ;

__attribute__((used)) static int pch_close(struct net_device *ndev)
{
 struct pch_can_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 napi_disable(&priv->napi);
 pch_can_release(priv);
 free_irq(priv->dev->irq, ndev);
 close_candev(ndev);
 priv->can.state = CAN_STATE_STOPPED;
 return 0;
}
