
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int ASSERT_RTNL () ;
 int __bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_clear_int_mode (struct bnxt*) ;
 int bnxt_hwrm_func_qcaps (struct bnxt*) ;
 int bnxt_init_int_mode (struct bnxt*) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 int bnxt_ulp_irq_restart (struct bnxt*,int) ;
 int bnxt_ulp_irq_stop (struct bnxt*) ;
 int dev_close (int ) ;
 scalar_t__ netif_running (int ) ;

int bnxt_restore_pf_fw_resources(struct bnxt *bp)
{
 int rc;

 ASSERT_RTNL();
 bnxt_hwrm_func_qcaps(bp);

 if (netif_running(bp->dev))
  __bnxt_close_nic(bp, 1, 0);

 bnxt_ulp_irq_stop(bp);
 bnxt_clear_int_mode(bp);
 rc = bnxt_init_int_mode(bp);
 bnxt_ulp_irq_restart(bp, rc);

 if (netif_running(bp->dev)) {
  if (rc)
   dev_close(bp->dev);
  else
   rc = bnxt_open_nic(bp, 1, 0);
 }

 return rc;
}
