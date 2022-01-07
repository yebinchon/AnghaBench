
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_rx_queue {int rx_skbuff; int rx_skbuff_dma; int dma_rx_phy; int dma_rx; } ;
struct sxgbe_rx_norm_desc {int dummy; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void free_rx_ring(struct device *dev, struct sxgbe_rx_queue *rx_ring,
    int rx_rsize)
{
 dma_free_coherent(dev, rx_rsize * sizeof(struct sxgbe_rx_norm_desc),
     rx_ring->dma_rx, rx_ring->dma_rx_phy);
 kfree(rx_ring->rx_skbuff_dma);
 kfree(rx_ring->rx_skbuff);
}
