
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int stats_block_coalesce_usecs; scalar_t__ tx_max_coalesced_frames_irq; scalar_t__ tx_coalesce_usecs_irq; scalar_t__ tx_max_coalesced_frames; scalar_t__ tx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames_irq; scalar_t__ rx_coalesce_usecs_irq; scalar_t__ rx_max_coalesced_frames; scalar_t__ rx_coalesce_usecs; } ;
struct bnx2 {int rx_ticks; int rx_quick_cons_trip; int rx_ticks_int; int rx_quick_cons_trip_int; int tx_ticks; int tx_quick_cons_trip; int tx_ticks_int; int tx_quick_cons_trip_int; int flags; int dev; int stats_ticks; } ;


 int BNX2_FLAG_BROKEN_STATS ;
 int BNX2_HC_STATS_TICKS_HC_STAT_TICKS ;
 int USEC_PER_SEC ;
 int bnx2_init_nic (struct bnx2*,int ) ;
 int bnx2_netif_start (struct bnx2*,int) ;
 int bnx2_netif_stop (struct bnx2*,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
bnx2_set_coalesce(struct net_device *dev, struct ethtool_coalesce *coal)
{
 struct bnx2 *bp = netdev_priv(dev);

 bp->rx_ticks = (u16) coal->rx_coalesce_usecs;
 if (bp->rx_ticks > 0x3ff) bp->rx_ticks = 0x3ff;

 bp->rx_quick_cons_trip = (u16) coal->rx_max_coalesced_frames;
 if (bp->rx_quick_cons_trip > 0xff) bp->rx_quick_cons_trip = 0xff;

 bp->rx_ticks_int = (u16) coal->rx_coalesce_usecs_irq;
 if (bp->rx_ticks_int > 0x3ff) bp->rx_ticks_int = 0x3ff;

 bp->rx_quick_cons_trip_int = (u16) coal->rx_max_coalesced_frames_irq;
 if (bp->rx_quick_cons_trip_int > 0xff)
  bp->rx_quick_cons_trip_int = 0xff;

 bp->tx_ticks = (u16) coal->tx_coalesce_usecs;
 if (bp->tx_ticks > 0x3ff) bp->tx_ticks = 0x3ff;

 bp->tx_quick_cons_trip = (u16) coal->tx_max_coalesced_frames;
 if (bp->tx_quick_cons_trip > 0xff) bp->tx_quick_cons_trip = 0xff;

 bp->tx_ticks_int = (u16) coal->tx_coalesce_usecs_irq;
 if (bp->tx_ticks_int > 0x3ff) bp->tx_ticks_int = 0x3ff;

 bp->tx_quick_cons_trip_int = (u16) coal->tx_max_coalesced_frames_irq;
 if (bp->tx_quick_cons_trip_int > 0xff) bp->tx_quick_cons_trip_int =
  0xff;

 bp->stats_ticks = coal->stats_block_coalesce_usecs;
 if (bp->flags & BNX2_FLAG_BROKEN_STATS) {
  if (bp->stats_ticks != 0 && bp->stats_ticks != USEC_PER_SEC)
   bp->stats_ticks = USEC_PER_SEC;
 }
 if (bp->stats_ticks > BNX2_HC_STATS_TICKS_HC_STAT_TICKS)
  bp->stats_ticks = BNX2_HC_STATS_TICKS_HC_STAT_TICKS;
 bp->stats_ticks &= BNX2_HC_STATS_TICKS_HC_STAT_TICKS;

 if (netif_running(bp->dev)) {
  bnx2_netif_stop(bp, 1);
  bnx2_init_nic(bp, 0);
  bnx2_netif_start(bp, 1);
 }

 return 0;
}
