
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int hwrm_spec_code; int fw_cap; int dev; } ;


 int BNXT_FW_CAP_NEW_RM ;
 int __bnxt_hwrm_func_qcaps (struct bnxt*) ;
 int bnxt_alloc_ctx_mem (struct bnxt*) ;
 int bnxt_hwrm_func_resc_qcaps (struct bnxt*,int) ;
 int bnxt_hwrm_queue_qportcfg (struct bnxt*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int bnxt_hwrm_func_qcaps(struct bnxt *bp)
{
 int rc;

 rc = __bnxt_hwrm_func_qcaps(bp);
 if (rc)
  return rc;
 rc = bnxt_hwrm_queue_qportcfg(bp);
 if (rc) {
  netdev_err(bp->dev, "hwrm query qportcfg failure rc: %d\n", rc);
  return rc;
 }
 if (bp->hwrm_spec_code >= 0x10803) {
  rc = bnxt_alloc_ctx_mem(bp);
  if (rc)
   return rc;
  rc = bnxt_hwrm_func_resc_qcaps(bp, 1);
  if (!rc)
   bp->fw_cap |= BNXT_FW_CAP_NEW_RM;
 }
 return 0;
}
