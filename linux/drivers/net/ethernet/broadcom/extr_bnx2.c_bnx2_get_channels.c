
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; int tx_count; int rx_count; scalar_t__ max_combined; scalar_t__ max_other; void* max_tx; void* max_rx; } ;
struct bnx2 {int flags; int num_tx_rings; int num_rx_rings; } ;


 int BNX2_FLAG_MSIX_CAP ;
 void* RX_MAX_RINGS ;
 void* TX_MAX_RINGS ;
 int disable_msi ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnx2_get_channels(struct net_device *dev,
         struct ethtool_channels *channels)
{
 struct bnx2 *bp = netdev_priv(dev);
 u32 max_rx_rings = 1;
 u32 max_tx_rings = 1;

 if ((bp->flags & BNX2_FLAG_MSIX_CAP) && !disable_msi) {
  max_rx_rings = RX_MAX_RINGS;
  max_tx_rings = TX_MAX_RINGS;
 }

 channels->max_rx = max_rx_rings;
 channels->max_tx = max_tx_rings;
 channels->max_other = 0;
 channels->max_combined = 0;
 channels->rx_count = bp->num_rx_rings;
 channels->tx_count = bp->num_tx_rings;
 channels->other_count = 0;
 channels->combined_count = 0;
}
