
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int netdev_err (int ,char*) ;

void bnxt_hwrm_exec_fwd_req(struct bnxt *bp)
{
 netdev_err(bp->dev, "Invalid VF message received when SRIOV is not enable\n");
}
