
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; int vnic_info; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_TPA ;
 int bnxt_hwrm_clear_vnic_filter (struct bnxt*) ;
 int bnxt_hwrm_clear_vnic_rss (struct bnxt*) ;
 int bnxt_hwrm_vnic_ctx_free (struct bnxt*) ;
 int bnxt_hwrm_vnic_free (struct bnxt*) ;
 int bnxt_set_tpa (struct bnxt*,int) ;

__attribute__((used)) static void bnxt_clear_vnic(struct bnxt *bp)
{
 if (!bp->vnic_info)
  return;

 bnxt_hwrm_clear_vnic_filter(bp);
 if (!(bp->flags & BNXT_FLAG_CHIP_P5)) {

  bnxt_hwrm_clear_vnic_rss(bp);
  bnxt_hwrm_vnic_ctx_free(bp);
 }

 if (bp->flags & BNXT_FLAG_TPA)
  bnxt_set_tpa(bp, 0);
 bnxt_hwrm_vnic_free(bp);
 if (bp->flags & BNXT_FLAG_CHIP_P5)
  bnxt_hwrm_vnic_ctx_free(bp);
}
