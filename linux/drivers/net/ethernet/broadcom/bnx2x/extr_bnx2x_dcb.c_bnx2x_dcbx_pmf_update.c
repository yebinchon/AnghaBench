
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; int dcbx_error; int dcbx_local_feat; } ;


 int DCB_CMD_CEE_GET ;
 int DRV_FLAGS_DCB_CONFIGURED ;
 scalar_t__ GET_FLAGS (int ,int) ;
 int RTM_GETDCB ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM2_RD (struct bnx2x*,int ) ;
 int bnx2x_dcbnl_update_applist (struct bnx2x*,int) ;
 scalar_t__ bnx2x_dcbx_read_shmem_neg_results (struct bnx2x*) ;
 int bnx2x_dcbx_update_tc_mapping (struct bnx2x*) ;
 int bnx2x_dump_dcbx_drv_param (struct bnx2x*,int *,int ) ;
 int bnx2x_get_dcbx_drv_param (struct bnx2x*,int *,int ) ;
 int dcbnl_cee_notify (int ,int ,int ,int ,int ) ;
 int drv_flags ;

void bnx2x_dcbx_pmf_update(struct bnx2x *bp)
{



 if (SHMEM2_HAS(bp, drv_flags) &&
    GET_FLAGS(SHMEM2_RD(bp, drv_flags), 1 << DRV_FLAGS_DCB_CONFIGURED)) {

  if (bnx2x_dcbx_read_shmem_neg_results(bp))
   return;

  bnx2x_dump_dcbx_drv_param(bp, &bp->dcbx_local_feat,
       bp->dcbx_error);
  bnx2x_get_dcbx_drv_param(bp, &bp->dcbx_local_feat,
      bp->dcbx_error);
  bnx2x_dcbx_update_tc_mapping(bp);
 }
}
