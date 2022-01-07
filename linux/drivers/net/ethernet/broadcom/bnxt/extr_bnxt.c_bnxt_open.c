
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt_pf_info {int active_vfs; } ;
struct bnxt {struct bnxt_pf_info pf; int state; int dev; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int BNXT_STATE_ABORT_ERR ;
 int BNXT_STATE_FW_RESET_DET ;
 int ENODEV ;
 int __bnxt_open_nic (struct bnxt*,int,int) ;
 int bnxt_cfg_hw_sriov (struct bnxt*,int*,int) ;
 int bnxt_hwmon_open (struct bnxt*) ;
 int bnxt_hwrm_if_change (struct bnxt*,int) ;
 int netdev_err (int ,char*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnxt_open(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc;

 if (test_bit(BNXT_STATE_ABORT_ERR, &bp->state)) {
  netdev_err(bp->dev, "A previous firmware reset did not complete, aborting\n");
  return -ENODEV;
 }

 rc = bnxt_hwrm_if_change(bp, 1);
 if (rc)
  return rc;
 rc = __bnxt_open_nic(bp, 1, 1);
 if (rc) {
  bnxt_hwrm_if_change(bp, 0);
 } else {
  if (test_and_clear_bit(BNXT_STATE_FW_RESET_DET, &bp->state) &&
      BNXT_PF(bp)) {
   struct bnxt_pf_info *pf = &bp->pf;
   int n = pf->active_vfs;

   if (n)
    bnxt_cfg_hw_sriov(bp, &n, 1);
  }
  bnxt_hwmon_open(bp);
 }

 return rc;
}
