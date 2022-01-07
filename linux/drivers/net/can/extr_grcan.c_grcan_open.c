
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct TYPE_6__ {int ctrlmode; void* echo_skb; int echo_skb_max; } ;
struct TYPE_4__ {int rxsize; int txsize; } ;
struct TYPE_5__ {int size; } ;
struct grcan_dma {TYPE_2__ tx; } ;
struct grcan_priv {int resetting; int closing; void* echo_skb; void* txdlc; int lock; TYPE_3__ can; int napi; TYPE_1__ config; struct grcan_dma dma; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int close_candev (struct net_device*) ;
 int grcan_allocate_dma_buffers (struct net_device*,int ,int ) ;
 int grcan_free_dma_buffers (struct net_device*) ;
 int grcan_interrupt ;
 int grcan_start (struct net_device*) ;
 void* kcalloc (int ,int,int ) ;
 int kfree (void*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grcan_open(struct net_device *dev)
{
 struct grcan_priv *priv = netdev_priv(dev);
 struct grcan_dma *dma = &priv->dma;
 unsigned long flags;
 int err;


 err = grcan_allocate_dma_buffers(dev, priv->config.txsize,
      priv->config.rxsize);
 if (err) {
  netdev_err(dev, "could not allocate DMA buffers\n");
  return err;
 }

 priv->echo_skb = kcalloc(dma->tx.size, sizeof(*priv->echo_skb),
     GFP_KERNEL);
 if (!priv->echo_skb) {
  err = -ENOMEM;
  goto exit_free_dma_buffers;
 }
 priv->can.echo_skb_max = dma->tx.size;
 priv->can.echo_skb = priv->echo_skb;

 priv->txdlc = kcalloc(dma->tx.size, sizeof(*priv->txdlc), GFP_KERNEL);
 if (!priv->txdlc) {
  err = -ENOMEM;
  goto exit_free_echo_skb;
 }


 err = open_candev(dev);
 if (err)
  goto exit_free_txdlc;

 err = request_irq(dev->irq, grcan_interrupt, IRQF_SHARED,
     dev->name, dev);
 if (err)
  goto exit_close_candev;

 spin_lock_irqsave(&priv->lock, flags);

 napi_enable(&priv->napi);
 grcan_start(dev);
 if (!(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
  netif_start_queue(dev);
 priv->resetting = 0;
 priv->closing = 0;

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;

exit_close_candev:
 close_candev(dev);
exit_free_txdlc:
 kfree(priv->txdlc);
exit_free_echo_skb:
 kfree(priv->echo_skb);
exit_free_dma_buffers:
 grcan_free_dma_buffers(dev);
 return err;
}
