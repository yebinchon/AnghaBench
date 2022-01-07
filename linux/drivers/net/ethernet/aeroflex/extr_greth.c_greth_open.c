
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev; int irq; } ;
struct greth_private {int napi; TYPE_1__* regs; int irq; } ;
struct TYPE_2__ {int status; } ;


 int GRETH_REGSAVE (int ,int) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int greth_clean_rings (struct greth_private*) ;
 int greth_enable_irqs (struct greth_private*) ;
 int greth_enable_rx (struct greth_private*) ;
 int greth_enable_tx (struct greth_private*) ;
 int greth_init_rings (struct greth_private*) ;
 int greth_interrupt ;
 int napi_enable (int *) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct greth_private*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int greth_open(struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);
 int err;

 err = greth_init_rings(greth);
 if (err) {
  if (netif_msg_ifup(greth))
   dev_err(&dev->dev, "Could not allocate memory for DMA rings\n");
  return err;
 }

 err = request_irq(greth->irq, greth_interrupt, 0, "eth", (void *) dev);
 if (err) {
  if (netif_msg_ifup(greth))
   dev_err(&dev->dev, "Could not allocate interrupt %d\n", dev->irq);
  greth_clean_rings(greth);
  return err;
 }

 if (netif_msg_ifup(greth))
  dev_dbg(&dev->dev, " starting queue\n");
 netif_start_queue(dev);

 GRETH_REGSAVE(greth->regs->status, 0xFF);

 napi_enable(&greth->napi);

 greth_enable_irqs(greth);
 greth_enable_tx(greth);
 greth_enable_rx(greth);
 return 0;

}
