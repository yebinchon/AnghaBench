
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma; int napi; } ;
struct TYPE_3__ {int dma; int napi; } ;
struct xrx200_priv {TYPE_2__ chan_tx; TYPE_1__ chan_rx; } ;
struct net_device {int dummy; } ;


 int ltq_dma_close (int *) ;
 int napi_disable (int *) ;
 struct xrx200_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int xrx200_close(struct net_device *net_dev)
{
 struct xrx200_priv *priv = netdev_priv(net_dev);

 netif_stop_queue(net_dev);

 napi_disable(&priv->chan_rx.napi);
 ltq_dma_close(&priv->chan_rx.dma);

 napi_disable(&priv->chan_tx.napi);
 ltq_dma_close(&priv->chan_tx.dma);

 return 0;
}
