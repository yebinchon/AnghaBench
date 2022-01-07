
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct bnx2x {int pdev; } ;


 scalar_t__ BNX2X_MAX_RSS_COUNT (struct bnx2x*) ;
 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_IOV ;
 scalar_t__ BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int EINVAL ;
 int EPERM ;
 int LOAD_NORMAL ;
 int UNLOAD_NORMAL ;
 int bnx2x_change_num_queues (struct bnx2x*,scalar_t__) ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ pci_num_vf (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bnx2x_set_channels(struct net_device *dev,
         struct ethtool_channels *channels)
{
 struct bnx2x *bp = netdev_priv(dev);

 DP(BNX2X_MSG_ETHTOOL,
    "set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\n",
    channels->rx_count, channels->tx_count, channels->other_count,
    channels->combined_count);

 if (pci_num_vf(bp->pdev)) {
  DP(BNX2X_MSG_IOV, "VFs are enabled, can not set channels\n");
  return -EPERM;
 }




 if (channels->rx_count || channels->tx_count || channels->other_count
     || (channels->combined_count == 0) ||
     (channels->combined_count > BNX2X_MAX_RSS_COUNT(bp))) {
  DP(BNX2X_MSG_ETHTOOL, "command parameters not supported\n");
  return -EINVAL;
 }


 if (channels->combined_count == BNX2X_NUM_ETH_QUEUES(bp)) {
  DP(BNX2X_MSG_ETHTOOL, "No change in active parameters\n");
  return 0;
 }





 if (unlikely(!netif_running(dev))) {
  bnx2x_change_num_queues(bp, channels->combined_count);
  return 0;
 }
 bnx2x_nic_unload(bp, UNLOAD_NORMAL, 1);
 bnx2x_change_num_queues(bp, channels->combined_count);
 return bnx2x_nic_load(bp, LOAD_NORMAL);
}
