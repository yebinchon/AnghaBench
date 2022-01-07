
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {void* tx_status; int tx_status_pa; void* tx_desc_ring; int tx_desc_ring_pa; int tcb_ring; } ;
struct tx_desc {int dummy; } ;
struct tcb {int dummy; } ;
struct et131x_adapter {TYPE_1__* pdev; struct tx_ring tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NUM_DESC_PER_RING_TX ;
 int NUM_TCB ;
 int dev_err (int *,char*) ;
 void* dma_alloc_coherent (int *,int,int *,int) ;
 int kcalloc (int ,int,int) ;

__attribute__((used)) static int et131x_tx_dma_memory_alloc(struct et131x_adapter *adapter)
{
 int desc_size = 0;
 struct tx_ring *tx_ring = &adapter->tx_ring;


 tx_ring->tcb_ring = kcalloc(NUM_TCB, sizeof(struct tcb),
        GFP_KERNEL | GFP_DMA);
 if (!tx_ring->tcb_ring)
  return -ENOMEM;

 desc_size = (sizeof(struct tx_desc) * NUM_DESC_PER_RING_TX);
 tx_ring->tx_desc_ring = dma_alloc_coherent(&adapter->pdev->dev,
         desc_size,
         &tx_ring->tx_desc_ring_pa,
         GFP_KERNEL);
 if (!tx_ring->tx_desc_ring) {
  dev_err(&adapter->pdev->dev,
   "Cannot alloc memory for Tx Ring\n");
  return -ENOMEM;
 }

 tx_ring->tx_status = dma_alloc_coherent(&adapter->pdev->dev,
          sizeof(u32),
          &tx_ring->tx_status_pa,
          GFP_KERNEL);
 if (!tx_ring->tx_status) {
  dev_err(&adapter->pdev->dev,
   "Cannot alloc memory for Tx status block\n");
  return -ENOMEM;
 }
 return 0;
}
