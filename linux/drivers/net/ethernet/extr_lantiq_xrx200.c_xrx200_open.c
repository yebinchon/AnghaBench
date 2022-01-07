
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma; int napi; } ;
struct TYPE_3__ {int dma; int napi; } ;
struct xrx200_priv {TYPE_2__ chan_rx; TYPE_1__ chan_tx; } ;
struct net_device {int dummy; } ;


 int ltq_dma_enable_irq (int *) ;
 int ltq_dma_open (int *) ;
 int napi_enable (int *) ;
 struct xrx200_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int usleep_range (int,int) ;
 int xrx200_flush_dma (TYPE_2__*) ;

__attribute__((used)) static int xrx200_open(struct net_device *net_dev)
{
 struct xrx200_priv *priv = netdev_priv(net_dev);

 napi_enable(&priv->chan_tx.napi);
 ltq_dma_open(&priv->chan_tx.dma);
 ltq_dma_enable_irq(&priv->chan_tx.dma);

 napi_enable(&priv->chan_rx.napi);
 ltq_dma_open(&priv->chan_rx.dma);






 usleep_range(20, 40);
 xrx200_flush_dma(&priv->chan_rx);
 ltq_dma_enable_irq(&priv->chan_rx.dma);

 netif_wake_queue(net_dev);

 return 0;
}
