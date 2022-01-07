
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct bnx2x {int flags; int wol; } ;


 int BNX2X_MSG_ETHTOOL ;
 int CURR_CFG_MET_OS ;
 int DP (int ,char*) ;
 int EINVAL ;
 int NO_WOL_FLAG ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int ) ;
 int WAKE_MAGIC ;
 int curr_cfg ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (wol->wolopts & ~WAKE_MAGIC) {
  DP(BNX2X_MSG_ETHTOOL, "WOL not supported\n");
  return -EINVAL;
 }

 if (wol->wolopts & WAKE_MAGIC) {
  if (bp->flags & NO_WOL_FLAG) {
   DP(BNX2X_MSG_ETHTOOL, "WOL not supported\n");
   return -EINVAL;
  }
  bp->wol = 1;
 } else
  bp->wol = 0;

 if (SHMEM2_HAS(bp, curr_cfg))
  SHMEM2_WR(bp, curr_cfg, CURR_CFG_MET_OS);

 return 0;
}
