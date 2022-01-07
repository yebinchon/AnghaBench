
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union cdu_context {int dummy; } cdu_context ;
struct ilt_line {int dummy; } ;
struct host_sp_status_block {int dummy; } ;
struct bnx2x_slowpath {int dummy; } ;
struct bnx2x {void* eq_ring; int eq_mapping; void* spq; int spq_mapping; TYPE_2__* ilt; TYPE_1__* context; void* slowpath; int slowpath_mapping; void* def_status_blk; int def_status_blk_mapping; void* t2; int t2_mapping; } ;
struct TYPE_4__ {int lines; } ;
struct TYPE_3__ {int size; void* vcxt; int cxt_mapping; } ;


 int BCM_PAGE_SIZE ;
 int BNX2X_ERR (char*) ;
 int BNX2X_L2_CID_COUNT (struct bnx2x*) ;
 void* BNX2X_PCI_ALLOC (int *,int) ;
 int CDU_ILT_PAGE_SZ ;
 int CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ILT_MAX_LINES ;
 int ILT_MEMOP_ALLOC ;
 int NUM_EQ_PAGES ;
 int SRC_T2_SZ ;
 int bnx2x_free_mem (struct bnx2x*) ;
 scalar_t__ bnx2x_ilt_mem_op (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_iov_alloc_mem (struct bnx2x*) ;
 int kcalloc (int ,int,int ) ;
 int min (int ,int) ;

int bnx2x_alloc_mem(struct bnx2x *bp)
{
 int i, allocated, context_size;

 if (!CONFIGURE_NIC_MODE(bp) && !bp->t2) {

  bp->t2 = BNX2X_PCI_ALLOC(&bp->t2_mapping, SRC_T2_SZ);
  if (!bp->t2)
   goto alloc_mem_err;
 }

 bp->def_status_blk = BNX2X_PCI_ALLOC(&bp->def_status_blk_mapping,
          sizeof(struct host_sp_status_block));
 if (!bp->def_status_blk)
  goto alloc_mem_err;

 bp->slowpath = BNX2X_PCI_ALLOC(&bp->slowpath_mapping,
           sizeof(struct bnx2x_slowpath));
 if (!bp->slowpath)
  goto alloc_mem_err;
 context_size = sizeof(union cdu_context) * BNX2X_L2_CID_COUNT(bp);

 for (i = 0, allocated = 0; allocated < context_size; i++) {
  bp->context[i].size = min(CDU_ILT_PAGE_SZ,
       (context_size - allocated));
  bp->context[i].vcxt = BNX2X_PCI_ALLOC(&bp->context[i].cxt_mapping,
            bp->context[i].size);
  if (!bp->context[i].vcxt)
   goto alloc_mem_err;
  allocated += bp->context[i].size;
 }
 bp->ilt->lines = kcalloc(ILT_MAX_LINES, sizeof(struct ilt_line),
     GFP_KERNEL);
 if (!bp->ilt->lines)
  goto alloc_mem_err;

 if (bnx2x_ilt_mem_op(bp, ILT_MEMOP_ALLOC))
  goto alloc_mem_err;

 if (bnx2x_iov_alloc_mem(bp))
  goto alloc_mem_err;


 bp->spq = BNX2X_PCI_ALLOC(&bp->spq_mapping, BCM_PAGE_SIZE);
 if (!bp->spq)
  goto alloc_mem_err;


 bp->eq_ring = BNX2X_PCI_ALLOC(&bp->eq_mapping,
          BCM_PAGE_SIZE * NUM_EQ_PAGES);
 if (!bp->eq_ring)
  goto alloc_mem_err;

 return 0;

alloc_mem_err:
 bnx2x_free_mem(bp);
 BNX2X_ERR("Can't allocate memory\n");
 return -ENOMEM;
}
