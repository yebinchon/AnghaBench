
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct bnxt_vnic_info {int flags; } ;
struct bnxt {int flags; int dev; int rsscos_nr_ctxs; struct bnxt_vnic_info* vnic_info; } ;


 scalar_t__ BNXT_CHIP_TYPE_NITRO_A0 (struct bnxt*) ;
 int BNXT_FLAG_AGG_RINGS ;
 int BNXT_VNIC_RFS_NEW_RSS_FLAG ;
 int bnxt_hwrm_vnic_cfg (struct bnxt*,size_t) ;
 int bnxt_hwrm_vnic_ctx_alloc (struct bnxt*,size_t,int) ;
 int bnxt_hwrm_vnic_set_hds (struct bnxt*,size_t) ;
 int bnxt_hwrm_vnic_set_rss (struct bnxt*,size_t,int) ;
 int netdev_err (int ,char*,size_t,int) ;

__attribute__((used)) static int __bnxt_setup_vnic(struct bnxt *bp, u16 vnic_id)
{
 struct bnxt_vnic_info *vnic = &bp->vnic_info[vnic_id];
 int rc;

 if (vnic->flags & BNXT_VNIC_RFS_NEW_RSS_FLAG)
  goto skip_rss_ctx;


 rc = bnxt_hwrm_vnic_ctx_alloc(bp, vnic_id, 0);
 if (rc) {
  netdev_err(bp->dev, "hwrm vnic %d alloc failure rc: %x\n",
      vnic_id, rc);
  goto vnic_setup_err;
 }
 bp->rsscos_nr_ctxs++;

 if (BNXT_CHIP_TYPE_NITRO_A0(bp)) {
  rc = bnxt_hwrm_vnic_ctx_alloc(bp, vnic_id, 1);
  if (rc) {
   netdev_err(bp->dev, "hwrm vnic %d cos ctx alloc failure rc: %x\n",
       vnic_id, rc);
   goto vnic_setup_err;
  }
  bp->rsscos_nr_ctxs++;
 }

skip_rss_ctx:

 rc = bnxt_hwrm_vnic_cfg(bp, vnic_id);
 if (rc) {
  netdev_err(bp->dev, "hwrm vnic %d cfg failure rc: %x\n",
      vnic_id, rc);
  goto vnic_setup_err;
 }


 rc = bnxt_hwrm_vnic_set_rss(bp, vnic_id, 1);
 if (rc) {
  netdev_err(bp->dev, "hwrm vnic %d set rss failure rc: %x\n",
      vnic_id, rc);
  goto vnic_setup_err;
 }

 if (bp->flags & BNXT_FLAG_AGG_RINGS) {
  rc = bnxt_hwrm_vnic_set_hds(bp, vnic_id);
  if (rc) {
   netdev_err(bp->dev, "hwrm vnic %d set hds failure rc: %x\n",
       vnic_id, rc);
  }
 }

vnic_setup_err:
 return rc;
}
