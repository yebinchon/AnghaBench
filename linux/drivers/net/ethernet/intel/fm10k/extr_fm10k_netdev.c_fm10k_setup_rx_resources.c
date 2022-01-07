
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
struct fm10k_rx_buffer {int dummy; } ;
struct fm10k_ring {int count; int size; int * rx_buffer; int desc; int dma; int syncp; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int u64_stats_init (int *) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

int fm10k_setup_rx_resources(struct fm10k_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 int size;

 size = sizeof(struct fm10k_rx_buffer) * rx_ring->count;

 rx_ring->rx_buffer = vzalloc(size);
 if (!rx_ring->rx_buffer)
  goto err;

 u64_stats_init(&rx_ring->syncp);


 rx_ring->size = rx_ring->count * sizeof(union fm10k_rx_desc);
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 rx_ring->desc = dma_alloc_coherent(dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);
 if (!rx_ring->desc)
  goto err;

 return 0;
err:
 vfree(rx_ring->rx_buffer);
 rx_ring->rx_buffer = ((void*)0);
 return -ENOMEM;
}
