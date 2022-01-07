
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dev; } ;


 int BNX2X_LOOPBACK_FAILED ;
 int BNX2X_MAC_LOOPBACK ;
 int BNX2X_MAC_LOOPBACK_FAILED ;
 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_PHY_LOOPBACK ;
 int BNX2X_PHY_LOOPBACK_FAILED ;
 scalar_t__ BP_NOMCP (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_netif_start (struct bnx2x*) ;
 int bnx2x_netif_stop (struct bnx2x*,int) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_run_loopback (struct bnx2x*,int ) ;
 int netif_running (int ) ;

__attribute__((used)) static int bnx2x_test_loopback(struct bnx2x *bp)
{
 int rc = 0, res;

 if (BP_NOMCP(bp))
  return rc;

 if (!netif_running(bp->dev))
  return BNX2X_LOOPBACK_FAILED;

 bnx2x_netif_stop(bp, 1);
 bnx2x_acquire_phy_lock(bp);

 res = bnx2x_run_loopback(bp, BNX2X_PHY_LOOPBACK);
 if (res) {
  DP(BNX2X_MSG_ETHTOOL, "  PHY loopback failed  (res %d)\n", res);
  rc |= BNX2X_PHY_LOOPBACK_FAILED;
 }

 res = bnx2x_run_loopback(bp, BNX2X_MAC_LOOPBACK);
 if (res) {
  DP(BNX2X_MSG_ETHTOOL, "  MAC loopback failed  (res %d)\n", res);
  rc |= BNX2X_MAC_LOOPBACK_FAILED;
 }

 bnx2x_release_phy_lock(bp);
 bnx2x_netif_start(bp);

 return rc;
}
