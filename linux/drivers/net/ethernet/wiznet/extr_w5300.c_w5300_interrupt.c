
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int napi; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int S0_IR_RECV ;
 int S0_IR_SENDOK ;
 int W5300_IMR ;
 int W5300_S0_IR ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct w5300_priv*,int ,struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int tx_done ;
 int w5300_read (struct w5300_priv*,int ) ;
 int w5300_write (struct w5300_priv*,int ,int) ;

__attribute__((used)) static irqreturn_t w5300_interrupt(int irq, void *ndev_instance)
{
 struct net_device *ndev = ndev_instance;
 struct w5300_priv *priv = netdev_priv(ndev);

 int ir = w5300_read(priv, W5300_S0_IR);
 if (!ir)
  return IRQ_NONE;
 w5300_write(priv, W5300_S0_IR, ir);

 if (ir & S0_IR_SENDOK) {
  netif_dbg(priv, tx_done, ndev, "tx done\n");
  netif_wake_queue(ndev);
 }

 if (ir & S0_IR_RECV) {
  if (napi_schedule_prep(&priv->napi)) {
   w5300_write(priv, W5300_IMR, 0);
   __napi_schedule(&priv->napi);
  }
 }

 return IRQ_HANDLED;
}
