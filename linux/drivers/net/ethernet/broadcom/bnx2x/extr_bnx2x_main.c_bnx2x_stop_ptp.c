
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int * ptp_tx_skb; int ptp_task; } ;


 int BNX2X_MSG_PTP ;
 int DP (int ,char*) ;
 int bnx2x_disable_ptp (struct bnx2x*) ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb_any (int *) ;

__attribute__((used)) static void bnx2x_stop_ptp(struct bnx2x *bp)
{



 cancel_work_sync(&bp->ptp_task);

 if (bp->ptp_tx_skb) {
  dev_kfree_skb_any(bp->ptp_tx_skb);
  bp->ptp_tx_skb = ((void*)0);
 }


 bnx2x_disable_ptp(bp);

 DP(BNX2X_MSG_PTP, "PTP stop ended successfully\n");
}
