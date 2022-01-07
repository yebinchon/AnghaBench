
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int phy_lock; int dev; } ;


 int BNX2_DRV_MSG_CODE_RESET ;
 int BNX2_LOOPBACK_FAILED ;
 int BNX2_MAC_LOOPBACK ;
 int BNX2_MAC_LOOPBACK_FAILED ;
 int BNX2_PHY_LOOPBACK ;
 int BNX2_PHY_LOOPBACK_FAILED ;
 int bnx2_init_phy (struct bnx2*,int) ;
 int bnx2_reset_nic (struct bnx2*,int ) ;
 scalar_t__ bnx2_run_loopback (struct bnx2*,int ) ;
 int netif_running (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_test_loopback(struct bnx2 *bp)
{
 int rc = 0;

 if (!netif_running(bp->dev))
  return BNX2_LOOPBACK_FAILED;

 bnx2_reset_nic(bp, BNX2_DRV_MSG_CODE_RESET);
 spin_lock_bh(&bp->phy_lock);
 bnx2_init_phy(bp, 1);
 spin_unlock_bh(&bp->phy_lock);
 if (bnx2_run_loopback(bp, BNX2_MAC_LOOPBACK))
  rc |= BNX2_MAC_LOOPBACK_FAILED;
 if (bnx2_run_loopback(bp, BNX2_PHY_LOOPBACK))
  rc |= BNX2_PHY_LOOPBACK_FAILED;
 return rc;
}
