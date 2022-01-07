
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sxgbe_tx_queue {int dma_tx_phy; int dma_tx; scalar_t__ cur_tx; scalar_t__ dirty_tx; int queue_no; void* tx_skbuff; void* tx_skbuff_dma; } ;
struct sxgbe_tx_norm_desc {int dummy; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;

__attribute__((used)) static int init_tx_ring(struct device *dev, u8 queue_no,
   struct sxgbe_tx_queue *tx_ring, int tx_rsize)
{

 if (!tx_ring) {
  dev_err(dev, "No memory for TX queue of SXGBE\n");
  return -ENOMEM;
 }


 tx_ring->dma_tx = dma_alloc_coherent(dev,
          tx_rsize * sizeof(struct sxgbe_tx_norm_desc),
          &tx_ring->dma_tx_phy, GFP_KERNEL);
 if (!tx_ring->dma_tx)
  return -ENOMEM;


 tx_ring->tx_skbuff_dma = devm_kcalloc(dev, tx_rsize,
           sizeof(dma_addr_t), GFP_KERNEL);
 if (!tx_ring->tx_skbuff_dma)
  goto dmamem_err;

 tx_ring->tx_skbuff = devm_kcalloc(dev, tx_rsize,
       sizeof(struct sk_buff *), GFP_KERNEL);

 if (!tx_ring->tx_skbuff)
  goto dmamem_err;


 tx_ring->queue_no = queue_no;


 tx_ring->dirty_tx = 0;
 tx_ring->cur_tx = 0;

 return 0;

dmamem_err:
 dma_free_coherent(dev, tx_rsize * sizeof(struct sxgbe_tx_norm_desc),
     tx_ring->dma_tx, tx_ring->dma_tx_phy);
 return -ENOMEM;
}
