
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct ixgbevf_rx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; int dev; int * rx_buffer_info; int xdp_prog; int queue_index; int xdp_rxq; int desc; int dma; int syncp; } ;
struct ixgbevf_adapter {int xdp_prog; int netdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int u64_stats_init (int *) ;
 int vfree (int *) ;
 int * vmalloc (int) ;
 scalar_t__ xdp_rxq_info_reg (int *,int ,int ) ;

int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *rx_ring)
{
 int size;

 size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
 rx_ring->rx_buffer_info = vmalloc(size);
 if (!rx_ring->rx_buffer_info)
  goto err;

 u64_stats_init(&rx_ring->syncp);


 rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
 rx_ring->size = ALIGN(rx_ring->size, 4096);

 rx_ring->desc = dma_alloc_coherent(rx_ring->dev, rx_ring->size,
        &rx_ring->dma, GFP_KERNEL);

 if (!rx_ring->desc)
  goto err;


 if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
        rx_ring->queue_index) < 0)
  goto err;

 rx_ring->xdp_prog = adapter->xdp_prog;

 return 0;
err:
 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);
 dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
 return -ENOMEM;
}
