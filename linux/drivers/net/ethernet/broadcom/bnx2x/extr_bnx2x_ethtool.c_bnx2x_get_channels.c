
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {int combined_count; int max_combined; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MAX_RSS_COUNT (struct bnx2x*) ;
 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2x_get_channels(struct net_device *dev,
          struct ethtool_channels *channels)
{
 struct bnx2x *bp = netdev_priv(dev);

 channels->max_combined = BNX2X_MAX_RSS_COUNT(bp);
 channels->combined_count = BNX2X_NUM_ETH_QUEUES(bp);
}
