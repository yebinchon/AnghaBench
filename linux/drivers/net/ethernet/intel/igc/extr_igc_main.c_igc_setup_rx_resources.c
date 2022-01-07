
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct igc_rx_buffer {int dummy; } ;
struct igc_ring {int count; int size; int * rx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; int desc; int dma; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

int igc_setup_rx_resources(struct igc_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 int size, desc_len;

 size = sizeof(struct igc_rx_buffer) * rx_ring->count;
 rx_ring->rx_buffer_info = vzalloc(size);
 if (!rx_ring->rx_buffer_info)
  goto err;

 desc_len = sizeof(union igc_adv_rx_desc);


 rx_ring->size = rx_ring->count * desc_len;
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 rx_ring->desc = dma_alloc_coherent(dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);

 if (!rx_ring->desc)
  goto err;

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 return 0;

err:
 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);
 dev_err(dev,
  "Unable to allocate memory for the receive descriptor ring\n");
 return -ENOMEM;
}
