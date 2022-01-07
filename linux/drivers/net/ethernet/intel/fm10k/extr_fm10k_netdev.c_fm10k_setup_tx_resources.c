
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_tx_desc {int dummy; } ;
struct fm10k_tx_buffer {int dummy; } ;
struct fm10k_ring {int count; int size; int * tx_buffer; int desc; int dma; int syncp; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int u64_stats_init (int *) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

int fm10k_setup_tx_resources(struct fm10k_ring *tx_ring)
{
 struct device *dev = tx_ring->dev;
 int size;

 size = sizeof(struct fm10k_tx_buffer) * tx_ring->count;

 tx_ring->tx_buffer = vzalloc(size);
 if (!tx_ring->tx_buffer)
  goto err;

 u64_stats_init(&tx_ring->syncp);


 tx_ring->size = tx_ring->count * sizeof(struct fm10k_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 tx_ring->desc = dma_alloc_coherent(dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 return 0;

err:
 vfree(tx_ring->tx_buffer);
 tx_ring->tx_buffer = ((void*)0);
 return -ENOMEM;
}
