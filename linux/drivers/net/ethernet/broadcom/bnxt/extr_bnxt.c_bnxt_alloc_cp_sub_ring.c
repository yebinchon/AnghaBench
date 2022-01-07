
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ring_mem_info {void** pg_arr; int flags; int dma_arr; int page_size; int nr_pages; } ;
struct bnxt_ring_struct {struct bnxt_ring_mem_info ring_mem; } ;
struct bnxt_cp_ring_info {int cp_desc_mapping; scalar_t__ cp_desc_ring; struct bnxt_ring_struct cp_ring_struct; } ;
struct bnxt {int cp_nr_pages; } ;


 int BNXT_RMEM_RING_PTE_FLAG ;
 int GFP_KERNEL ;
 int HW_CMPD_RING_SIZE ;
 int bnxt_alloc_ring (struct bnxt*,struct bnxt_ring_mem_info*) ;
 int bnxt_free_ring (struct bnxt*,struct bnxt_ring_mem_info*) ;
 int kfree (struct bnxt_cp_ring_info*) ;
 struct bnxt_cp_ring_info* kzalloc (int,int ) ;

__attribute__((used)) static struct bnxt_cp_ring_info *bnxt_alloc_cp_sub_ring(struct bnxt *bp)
{
 struct bnxt_ring_mem_info *rmem;
 struct bnxt_ring_struct *ring;
 struct bnxt_cp_ring_info *cpr;
 int rc;

 cpr = kzalloc(sizeof(*cpr), GFP_KERNEL);
 if (!cpr)
  return ((void*)0);

 ring = &cpr->cp_ring_struct;
 rmem = &ring->ring_mem;
 rmem->nr_pages = bp->cp_nr_pages;
 rmem->page_size = HW_CMPD_RING_SIZE;
 rmem->pg_arr = (void **)cpr->cp_desc_ring;
 rmem->dma_arr = cpr->cp_desc_mapping;
 rmem->flags = BNXT_RMEM_RING_PTE_FLAG;
 rc = bnxt_alloc_ring(bp, rmem);
 if (rc) {
  bnxt_free_ring(bp, rmem);
  kfree(cpr);
  cpr = ((void*)0);
 }
 return cpr;
}
