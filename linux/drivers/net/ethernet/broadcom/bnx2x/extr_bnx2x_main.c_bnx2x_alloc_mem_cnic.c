
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct host_hc_status_block_e2 {int dummy; } ;
struct host_hc_status_block_e1x {int dummy; } ;
struct TYPE_5__ {int * addr_drv_info_to_mcp; } ;
struct TYPE_4__ {void* e1x_sb; void* e2_sb; } ;
struct bnx2x {TYPE_3__* slowpath; TYPE_2__ cnic_eth_dev; void* t2; int t2_mapping; TYPE_1__ cnic_sb; int cnic_sb_mapping; } ;
struct TYPE_6__ {int drv_info_to_mcp; } ;


 int BNX2X_ERR (char*) ;
 void* BNX2X_PCI_ALLOC (int *,int) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int ENOMEM ;
 int ILT_MEMOP_ALLOC ;
 int SRC_T2_SZ ;
 int bnx2x_free_mem_cnic (struct bnx2x*) ;
 scalar_t__ bnx2x_ilt_mem_op_cnic (struct bnx2x*,int ) ;

int bnx2x_alloc_mem_cnic(struct bnx2x *bp)
{
 if (!CHIP_IS_E1x(bp)) {

  bp->cnic_sb.e2_sb = BNX2X_PCI_ALLOC(&bp->cnic_sb_mapping,
          sizeof(struct host_hc_status_block_e2));
  if (!bp->cnic_sb.e2_sb)
   goto alloc_mem_err;
 } else {
  bp->cnic_sb.e1x_sb = BNX2X_PCI_ALLOC(&bp->cnic_sb_mapping,
           sizeof(struct host_hc_status_block_e1x));
  if (!bp->cnic_sb.e1x_sb)
   goto alloc_mem_err;
 }

 if (CONFIGURE_NIC_MODE(bp) && !bp->t2) {

  bp->t2 = BNX2X_PCI_ALLOC(&bp->t2_mapping, SRC_T2_SZ);
  if (!bp->t2)
   goto alloc_mem_err;
 }


 bp->cnic_eth_dev.addr_drv_info_to_mcp =
  &bp->slowpath->drv_info_to_mcp;

 if (bnx2x_ilt_mem_op_cnic(bp, ILT_MEMOP_ALLOC))
  goto alloc_mem_err;

 return 0;

alloc_mem_err:
 bnx2x_free_mem_cnic(bp);
 BNX2X_ERR("Can't allocate memory\n");
 return -ENOMEM;
}
