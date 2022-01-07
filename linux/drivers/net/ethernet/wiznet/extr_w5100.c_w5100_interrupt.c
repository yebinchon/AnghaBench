
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5100_priv {int napi; int rx_work; int xfer_wq; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int S0_IR_RECV ;
 int S0_IR_SENDOK ;
 int W5100_S0_IR (struct w5100_priv*) ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct w5100_priv*,int ,struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int queue_work (int ,int *) ;
 int tx_done ;
 int w5100_disable_intr (struct w5100_priv*) ;
 int w5100_read (struct w5100_priv*,int ) ;
 int w5100_write (struct w5100_priv*,int ,int) ;

__attribute__((used)) static irqreturn_t w5100_interrupt(int irq, void *ndev_instance)
{
 struct net_device *ndev = ndev_instance;
 struct w5100_priv *priv = netdev_priv(ndev);

 int ir = w5100_read(priv, W5100_S0_IR(priv));
 if (!ir)
  return IRQ_NONE;
 w5100_write(priv, W5100_S0_IR(priv), ir);

 if (ir & S0_IR_SENDOK) {
  netif_dbg(priv, tx_done, ndev, "tx done\n");
  netif_wake_queue(ndev);
 }

 if (ir & S0_IR_RECV) {
  w5100_disable_intr(priv);

  if (priv->ops->may_sleep)
   queue_work(priv->xfer_wq, &priv->rx_work);
  else if (napi_schedule_prep(&priv->napi))
   __napi_schedule(&priv->napi);
 }

 return IRQ_HANDLED;
}
