
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; int * tx_buffer_info; int desc; int dma; int dev; int syncp; int netdev; } ;
struct ixgbevf_adapter {int hw; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int hw_dbg (int *,char*) ;
 struct ixgbevf_adapter* netdev_priv (int ) ;
 int u64_stats_init (int *) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

int ixgbevf_setup_tx_resources(struct ixgbevf_ring *tx_ring)
{
 struct ixgbevf_adapter *adapter = netdev_priv(tx_ring->netdev);
 int size;

 size = sizeof(struct ixgbevf_tx_buffer) * tx_ring->count;
 tx_ring->tx_buffer_info = vmalloc(size);
 if (!tx_ring->tx_buffer_info)
  goto err;

 u64_stats_init(&tx_ring->syncp);


 tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 tx_ring->desc = dma_alloc_coherent(tx_ring->dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 return 0;

err:
 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);
 hw_dbg(&adapter->hw, "Unable to allocate memory for the transmit descriptor ring\n");
 return -ENOMEM;
}
