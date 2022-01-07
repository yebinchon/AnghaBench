
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {int tcb_ring; int * tx_status; int tx_status_pa; int * tx_desc_ring; int tx_desc_ring_pa; } ;
struct tx_desc {int dummy; } ;
struct et131x_adapter {TYPE_1__* pdev; struct tx_ring tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int NUM_DESC_PER_RING_TX ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void et131x_tx_dma_memory_free(struct et131x_adapter *adapter)
{
 int desc_size = 0;
 struct tx_ring *tx_ring = &adapter->tx_ring;

 if (tx_ring->tx_desc_ring) {

  desc_size = (sizeof(struct tx_desc) * NUM_DESC_PER_RING_TX);
  dma_free_coherent(&adapter->pdev->dev,
      desc_size,
      tx_ring->tx_desc_ring,
      tx_ring->tx_desc_ring_pa);
  tx_ring->tx_desc_ring = ((void*)0);
 }


 if (tx_ring->tx_status) {
  dma_free_coherent(&adapter->pdev->dev,
      sizeof(u32),
      tx_ring->tx_status,
      tx_ring->tx_status_pa);

  tx_ring->tx_status = ((void*)0);
 }

 kfree(tx_ring->tcb_ring);
}
