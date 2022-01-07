
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int irq; } ;
struct meth_private {int dma_ctrl; } ;
struct TYPE_3__ {int dma_ctrl; } ;
struct TYPE_4__ {TYPE_1__ eth; } ;


 int DPRINTK (char*) ;
 int METH_DMA_RX_EN ;
 int METH_DMA_RX_INT_EN ;
 int METH_DMA_TX_EN ;
 int METH_DMA_TX_INT_EN ;
 int free_irq (int ,struct net_device*) ;
 TYPE_2__* mace ;
 int meth_free_rx_ring (struct meth_private*) ;
 int meth_free_tx_ring (struct meth_private*) ;
 struct meth_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int meth_release(struct net_device *dev)
{
 struct meth_private *priv = netdev_priv(dev);

 DPRINTK("Stopping queue\n");
 netif_stop_queue(dev);

 priv->dma_ctrl &= ~(METH_DMA_TX_EN | METH_DMA_TX_INT_EN |
       METH_DMA_RX_EN | METH_DMA_RX_INT_EN);
 mace->eth.dma_ctrl = priv->dma_ctrl;
 free_irq(dev->irq, dev);
 meth_free_tx_ring(priv);
 meth_free_rx_ring(priv);

 return 0;
}
