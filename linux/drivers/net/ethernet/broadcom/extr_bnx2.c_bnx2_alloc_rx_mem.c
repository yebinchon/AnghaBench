
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2_rx_ring_info {void** rx_pg_desc_ring; int * rx_pg_desc_mapping; void* rx_pg_ring; void** rx_desc_ring; int * rx_desc_mapping; void* rx_buf_ring; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; } ;
struct bnx2 {int num_rx_rings; int rx_max_ring; int rx_max_pg_ring; TYPE_1__* pdev; scalar_t__ rx_pg_ring_size; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RXBD_RING_SIZE ;
 int SW_RXBD_RING_SIZE ;
 int SW_RXPG_RING_SIZE ;
 int array_size (int ,int) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 void* vzalloc (int ) ;

__attribute__((used)) static int
bnx2_alloc_rx_mem(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->num_rx_rings; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;
  int j;

  rxr->rx_buf_ring =
   vzalloc(array_size(SW_RXBD_RING_SIZE, bp->rx_max_ring));
  if (!rxr->rx_buf_ring)
   return -ENOMEM;

  for (j = 0; j < bp->rx_max_ring; j++) {
   rxr->rx_desc_ring[j] =
    dma_alloc_coherent(&bp->pdev->dev,
         RXBD_RING_SIZE,
         &rxr->rx_desc_mapping[j],
         GFP_KERNEL);
   if (!rxr->rx_desc_ring[j])
    return -ENOMEM;

  }

  if (bp->rx_pg_ring_size) {
   rxr->rx_pg_ring =
    vzalloc(array_size(SW_RXPG_RING_SIZE,
         bp->rx_max_pg_ring));
   if (!rxr->rx_pg_ring)
    return -ENOMEM;

  }

  for (j = 0; j < bp->rx_max_pg_ring; j++) {
   rxr->rx_pg_desc_ring[j] =
    dma_alloc_coherent(&bp->pdev->dev,
         RXBD_RING_SIZE,
         &rxr->rx_pg_desc_mapping[j],
         GFP_KERNEL);
   if (!rxr->rx_pg_desc_ring[j])
    return -ENOMEM;

  }
 }
 return 0;
}
