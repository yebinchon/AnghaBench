
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * msi; } ;
struct bnx2_napi {TYPE_2__ status_blk; } ;
struct bnx2 {int ctx_pages; int ** ctx_blk; int * ctx_blk_mapping; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_3__ {int dev; } ;


 int BNX2_PAGE_SIZE ;
 int bnx2_free_rx_mem (struct bnx2*) ;
 int bnx2_free_tx_mem (struct bnx2*) ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void
bnx2_free_mem(struct bnx2 *bp)
{
 int i;
 struct bnx2_napi *bnapi = &bp->bnx2_napi[0];

 bnx2_free_tx_mem(bp);
 bnx2_free_rx_mem(bp);

 for (i = 0; i < bp->ctx_pages; i++) {
  if (bp->ctx_blk[i]) {
   dma_free_coherent(&bp->pdev->dev, BNX2_PAGE_SIZE,
       bp->ctx_blk[i],
       bp->ctx_blk_mapping[i]);
   bp->ctx_blk[i] = ((void*)0);
  }
 }

 if (bnapi->status_blk.msi)
  bnapi->status_blk.msi = ((void*)0);
}
