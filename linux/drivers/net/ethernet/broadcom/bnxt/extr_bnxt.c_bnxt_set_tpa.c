
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt {int flags; int nr_vnics; int dev; int state; } ;


 int BNXT_FLAG_TPA ;
 int BNXT_STATE_FW_FATAL_COND ;
 int bnxt_hwrm_vnic_set_tpa (struct bnxt*,int,int) ;
 int netdev_err (int ,char*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnxt_set_tpa(struct bnxt *bp, bool set_tpa)
{
 int rc, i;
 u32 tpa_flags = 0;

 if (set_tpa)
  tpa_flags = bp->flags & BNXT_FLAG_TPA;
 else if (test_bit(BNXT_STATE_FW_FATAL_COND, &bp->state))
  return 0;
 for (i = 0; i < bp->nr_vnics; i++) {
  rc = bnxt_hwrm_vnic_set_tpa(bp, i, tpa_flags);
  if (rc) {
   netdev_err(bp->dev, "hwrm vnic set tpa failure rc for vnic %d: %x\n",
       i, rc);
   return rc;
  }
 }
 return 0;
}
