
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_rx_queue {int * rx_skbuff_dma; int * rx_skbuff; } ;
struct sxgbe_rx_norm_desc {int dummy; } ;
struct sxgbe_priv_data {int device; } ;
struct net_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 int kfree_skb (int ) ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sxgbe_free_rx_buffers(struct net_device *dev,
      struct sxgbe_rx_norm_desc *p, int i,
      unsigned int dma_buf_sz,
      struct sxgbe_rx_queue *rx_ring)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);

 kfree_skb(rx_ring->rx_skbuff[i]);
 dma_unmap_single(priv->device, rx_ring->rx_skbuff_dma[i],
    dma_buf_sz, DMA_FROM_DEVICE);
}
