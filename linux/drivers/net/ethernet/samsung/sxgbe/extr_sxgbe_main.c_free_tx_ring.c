
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_queue {int dma_tx_phy; int dma_tx; } ;
struct sxgbe_tx_norm_desc {int dummy; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int,int ,int ) ;

__attribute__((used)) static void free_tx_ring(struct device *dev, struct sxgbe_tx_queue *tx_ring,
    int tx_rsize)
{
 dma_free_coherent(dev, tx_rsize * sizeof(struct sxgbe_tx_norm_desc),
     tx_ring->dma_tx, tx_ring->dma_tx_phy);
}
