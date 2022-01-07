
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt {int flags; int dev; int rsscos_nr_ctxs; int rx_nr_rings; } ;


 int BNXT_FLAG_AGG_RINGS ;
 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int bnxt_hwrm_vnic_cfg (struct bnxt*,int ) ;
 int bnxt_hwrm_vnic_ctx_alloc (struct bnxt*,int ,int) ;
 int bnxt_hwrm_vnic_set_hds (struct bnxt*,int ) ;
 int bnxt_hwrm_vnic_set_rss_p5 (struct bnxt*,int ,int) ;
 int netdev_err (int ,char*,int ,int,...) ;

__attribute__((used)) static int __bnxt_setup_vnic_p5(struct bnxt *bp, u16 vnic_id)
{
 int rc, i, nr_ctxs;

 nr_ctxs = DIV_ROUND_UP(bp->rx_nr_rings, 64);
 for (i = 0; i < nr_ctxs; i++) {
  rc = bnxt_hwrm_vnic_ctx_alloc(bp, vnic_id, i);
  if (rc) {
   netdev_err(bp->dev, "hwrm vnic %d ctx %d alloc failure rc: %x\n",
       vnic_id, i, rc);
   break;
  }
  bp->rsscos_nr_ctxs++;
 }
 if (i < nr_ctxs)
  return -ENOMEM;

 rc = bnxt_hwrm_vnic_set_rss_p5(bp, vnic_id, 1);
 if (rc) {
  netdev_err(bp->dev, "hwrm vnic %d set rss failure rc: %d\n",
      vnic_id, rc);
  return rc;
 }
 rc = bnxt_hwrm_vnic_cfg(bp, vnic_id);
 if (rc) {
  netdev_err(bp->dev, "hwrm vnic %d cfg failure rc: %x\n",
      vnic_id, rc);
  return rc;
 }
 if (bp->flags & BNXT_FLAG_AGG_RINGS) {
  rc = bnxt_hwrm_vnic_set_hds(bp, vnic_id);
  if (rc) {
   netdev_err(bp->dev, "hwrm vnic %d set hds failure rc: %x\n",
       vnic_id, rc);
  }
 }
 return rc;
}
