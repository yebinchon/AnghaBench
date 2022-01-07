
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_vnic_info {scalar_t__* fw_rss_cos_lb_ctx; } ;
struct bnxt {int nr_vnics; scalar_t__ rsscos_nr_ctxs; struct bnxt_vnic_info* vnic_info; } ;


 int BNXT_MAX_CTX_PER_VNIC ;
 scalar_t__ INVALID_HW_RING_ID ;
 int bnxt_hwrm_vnic_ctx_free_one (struct bnxt*,int,int) ;

__attribute__((used)) static void bnxt_hwrm_vnic_ctx_free(struct bnxt *bp)
{
 int i, j;

 for (i = 0; i < bp->nr_vnics; i++) {
  struct bnxt_vnic_info *vnic = &bp->vnic_info[i];

  for (j = 0; j < BNXT_MAX_CTX_PER_VNIC; j++) {
   if (vnic->fw_rss_cos_lb_ctx[j] != INVALID_HW_RING_ID)
    bnxt_hwrm_vnic_ctx_free_one(bp, i, j);
  }
 }
 bp->rsscos_nr_ctxs = 0;
}
