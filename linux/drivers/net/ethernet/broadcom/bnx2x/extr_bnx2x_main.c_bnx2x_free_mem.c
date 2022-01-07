
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct host_sp_status_block {int dummy; } ;
struct bnx2x_slowpath {int dummy; } ;
struct bnx2x {int fw_stats_data_sz; int fw_stats_req_sz; int t2_mapping; int t2; int eq_mapping; int eq_ring; int spq_mapping; int spq; TYPE_2__* ilt; TYPE_1__* context; int slowpath_mapping; int slowpath; int def_status_blk_mapping; int def_status_blk; int fw_stats_mapping; int fw_stats; } ;
struct TYPE_4__ {int lines; } ;
struct TYPE_3__ {int size; int cxt_mapping; int vcxt; } ;


 int BCM_PAGE_SIZE ;
 int BNX2X_FREE (int ) ;
 int BNX2X_PCI_FREE (int ,int ,int) ;
 int ILT_MEMOP_FREE ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int L2_ILT_LINES (struct bnx2x*) ;
 int NUM_EQ_PAGES ;
 int SRC_T2_SZ ;
 int bnx2x_ilt_mem_op (struct bnx2x*,int ) ;
 int bnx2x_iov_free_mem (struct bnx2x*) ;

void bnx2x_free_mem(struct bnx2x *bp)
{
 int i;

 BNX2X_PCI_FREE(bp->fw_stats, bp->fw_stats_mapping,
         bp->fw_stats_data_sz + bp->fw_stats_req_sz);

 if (IS_VF(bp))
  return;

 BNX2X_PCI_FREE(bp->def_status_blk, bp->def_status_blk_mapping,
         sizeof(struct host_sp_status_block));

 BNX2X_PCI_FREE(bp->slowpath, bp->slowpath_mapping,
         sizeof(struct bnx2x_slowpath));

 for (i = 0; i < L2_ILT_LINES(bp); i++)
  BNX2X_PCI_FREE(bp->context[i].vcxt, bp->context[i].cxt_mapping,
          bp->context[i].size);
 bnx2x_ilt_mem_op(bp, ILT_MEMOP_FREE);

 BNX2X_FREE(bp->ilt->lines);

 BNX2X_PCI_FREE(bp->spq, bp->spq_mapping, BCM_PAGE_SIZE);

 BNX2X_PCI_FREE(bp->eq_ring, bp->eq_mapping,
         BCM_PAGE_SIZE * NUM_EQ_PAGES);

 BNX2X_PCI_FREE(bp->t2, bp->t2_mapping, SRC_T2_SZ);

 bnx2x_iov_free_mem(bp);
}
