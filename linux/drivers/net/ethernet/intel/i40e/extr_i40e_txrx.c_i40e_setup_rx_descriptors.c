
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union i40e_32byte_rx_desc {int dummy; } i40e_32byte_rx_desc ;
struct i40e_rx_buffer {int dummy; } ;
struct i40e_ring {int count; int size; int * rx_bi; TYPE_1__* vsi; int xdp_prog; int queue_index; int netdev; int xdp_rxq; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; int desc; int dma; int syncp; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int xdp_prog; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ I40E_VSI_MAIN ;
 int WARN_ON (int *) ;
 int dev_info (struct device*,char*,int) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int u64_stats_init (int *) ;
 int xdp_rxq_info_reg (int *,int ,int ) ;

int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 int err = -ENOMEM;
 int bi_size;


 WARN_ON(rx_ring->rx_bi);
 bi_size = sizeof(struct i40e_rx_buffer) * rx_ring->count;
 rx_ring->rx_bi = kzalloc(bi_size, GFP_KERNEL);
 if (!rx_ring->rx_bi)
  goto err;

 u64_stats_init(&rx_ring->syncp);


 rx_ring->size = rx_ring->count * sizeof(union i40e_32byte_rx_desc);
 rx_ring->size = ALIGN(rx_ring->size, 4096);
 rx_ring->desc = dma_alloc_coherent(dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);

 if (!rx_ring->desc) {
  dev_info(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
    rx_ring->size);
  goto err;
 }

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;


 if (rx_ring->vsi->type == I40E_VSI_MAIN) {
  err = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
           rx_ring->queue_index);
  if (err < 0)
   goto err;
 }

 rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;

 return 0;
err:
 kfree(rx_ring->rx_bi);
 rx_ring->rx_bi = ((void*)0);
 return err;
}
