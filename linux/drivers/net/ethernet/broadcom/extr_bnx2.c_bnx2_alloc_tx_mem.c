
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2_tx_ring_info {int tx_desc_ring; int tx_desc_mapping; int tx_buf_ring; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int num_tx_rings; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SW_TXBD_RING_SIZE ;
 int TXBD_RING_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int kzalloc (int ,int ) ;

__attribute__((used)) static int
bnx2_alloc_tx_mem(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->num_tx_rings; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;

  txr->tx_buf_ring = kzalloc(SW_TXBD_RING_SIZE, GFP_KERNEL);
  if (!txr->tx_buf_ring)
   return -ENOMEM;

  txr->tx_desc_ring =
   dma_alloc_coherent(&bp->pdev->dev, TXBD_RING_SIZE,
        &txr->tx_desc_mapping, GFP_KERNEL);
  if (!txr->tx_desc_ring)
   return -ENOMEM;
 }
 return 0;
}
