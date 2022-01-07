
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int stats_block_coalesce_usecs; int tx_max_coalesced_frames_irq; int tx_coalesce_usecs_irq; int tx_max_coalesced_frames; int tx_coalesce_usecs; int rx_max_coalesced_frames_irq; int rx_coalesce_usecs_irq; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct bnx2 {int stats_ticks; int tx_quick_cons_trip_int; int tx_ticks_int; int tx_quick_cons_trip; int tx_ticks; int rx_quick_cons_trip_int; int rx_ticks_int; int rx_quick_cons_trip; int rx_ticks; } ;


 int memset (struct ethtool_coalesce*,int ,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_get_coalesce(struct net_device *dev, struct ethtool_coalesce *coal)
{
 struct bnx2 *bp = netdev_priv(dev);

 memset(coal, 0, sizeof(struct ethtool_coalesce));

 coal->rx_coalesce_usecs = bp->rx_ticks;
 coal->rx_max_coalesced_frames = bp->rx_quick_cons_trip;
 coal->rx_coalesce_usecs_irq = bp->rx_ticks_int;
 coal->rx_max_coalesced_frames_irq = bp->rx_quick_cons_trip_int;

 coal->tx_coalesce_usecs = bp->tx_ticks;
 coal->tx_max_coalesced_frames = bp->tx_quick_cons_trip;
 coal->tx_coalesce_usecs_irq = bp->tx_ticks_int;
 coal->tx_max_coalesced_frames_irq = bp->tx_quick_cons_trip_int;

 coal->stats_block_coalesce_usecs = bp->stats_ticks;

 return 0;
}
