
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int phy_lock; int dev; scalar_t__ link_up; int intr_sem; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int bnx2_cnic_start (struct bnx2*) ;
 int bnx2_enable_int (struct bnx2*) ;
 int bnx2_napi_enable (struct bnx2*) ;
 int netif_carrier_on (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
bnx2_netif_start(struct bnx2 *bp, bool start_cnic)
{
 if (atomic_dec_and_test(&bp->intr_sem)) {
  if (netif_running(bp->dev)) {
   netif_tx_wake_all_queues(bp->dev);
   spin_lock_bh(&bp->phy_lock);
   if (bp->link_up)
    netif_carrier_on(bp->dev);
   spin_unlock_bh(&bp->phy_lock);
   bnx2_napi_enable(bp);
   bnx2_enable_int(bp);
   if (start_cnic)
    bnx2_cnic_start(bp);
  }
 }
}
