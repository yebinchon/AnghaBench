
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dev; } ;


 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_dbg_dump_states (struct bnxt*) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 int bnxt_ulp_start (struct bnxt*) ;
 int bnxt_ulp_stop (struct bnxt*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static void bnxt_reset_task(struct bnxt *bp, bool silent)
{
 if (!silent)
  bnxt_dbg_dump_states(bp);
 if (netif_running(bp->dev)) {
  int rc;

  if (!silent)
   bnxt_ulp_stop(bp);
  bnxt_close_nic(bp, 0, 0);
  rc = bnxt_open_nic(bp, 0, 0);
  if (!silent && !rc)
   bnxt_ulp_start(bp);
 }
}
