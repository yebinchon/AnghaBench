
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ring_mem_info {int depth; int flags; int dma_arr; int pg_arr; int page_size; } ;
struct bnxt_ctx_pg_info {int ctx_dma_arr; int ctx_pg_arr; struct bnxt_ring_mem_info ring_mem; } ;
struct bnxt {int dummy; } ;


 int BNXT_PAGE_SIZE ;
 int BNXT_RMEM_USE_FULL_PAGE_FLAG ;
 int BNXT_RMEM_VALID_PTE_FLAG ;
 int bnxt_alloc_ring (struct bnxt*,struct bnxt_ring_mem_info*) ;

__attribute__((used)) static int bnxt_alloc_ctx_mem_blk(struct bnxt *bp,
      struct bnxt_ctx_pg_info *ctx_pg)
{
 struct bnxt_ring_mem_info *rmem = &ctx_pg->ring_mem;

 rmem->page_size = BNXT_PAGE_SIZE;
 rmem->pg_arr = ctx_pg->ctx_pg_arr;
 rmem->dma_arr = ctx_pg->ctx_dma_arr;
 rmem->flags = BNXT_RMEM_VALID_PTE_FLAG;
 if (rmem->depth >= 1)
  rmem->flags |= BNXT_RMEM_USE_FULL_PAGE_FLAG;
 return bnxt_alloc_ring(bp, rmem);
}
