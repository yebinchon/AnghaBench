
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int timecounter_init_done; int cyclecounter; int timecounter; int ptp_task; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_PTP ;
 int DP (int ,char*) ;
 int INIT_WORK (int *,int ) ;
 int bnx2x_configure_ptp (struct bnx2x*) ;
 int bnx2x_init_cyclecounter (struct bnx2x*) ;
 int bnx2x_ptp_task ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int timecounter_init (int *,int *,int ) ;

void bnx2x_init_ptp(struct bnx2x *bp)
{
 int rc;


 rc = bnx2x_configure_ptp(bp);
 if (rc) {
  BNX2X_ERR("Stopping PTP initialization\n");
  return;
 }


 INIT_WORK(&bp->ptp_task, bnx2x_ptp_task);





 if (!bp->timecounter_init_done) {
  bnx2x_init_cyclecounter(bp);
  timecounter_init(&bp->timecounter, &bp->cyclecounter,
     ktime_to_ns(ktime_get_real()));
  bp->timecounter_init_done = 1;
 }

 DP(BNX2X_MSG_PTP, "PTP initialization ended successfully\n");
}
