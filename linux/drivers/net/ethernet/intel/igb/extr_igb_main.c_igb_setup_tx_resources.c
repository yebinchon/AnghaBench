
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
struct igb_tx_buffer {int dummy; } ;
struct igb_ring {int count; int size; int * tx_buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; int desc; int dma; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

int igb_setup_tx_resources(struct igb_ring *tx_ring)
{
 struct device *dev = tx_ring->dev;
 int size;

 size = sizeof(struct igb_tx_buffer) * tx_ring->count;

 tx_ring->tx_buffer_info = vmalloc(size);
 if (!tx_ring->tx_buffer_info)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(union e1000_adv_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 tx_ring->desc = dma_alloc_coherent(dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 return 0;

err:
 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);
 dev_err(dev, "Unable to allocate memory for the Tx descriptor ring\n");
 return -ENOMEM;
}
