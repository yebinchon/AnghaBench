
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ linearized; scalar_t__ stop_queue; scalar_t__ wake_queue; scalar_t__ done; scalar_t__ req; scalar_t__ pkt_done; scalar_t__ pkt_start; } ;
struct TYPE_7__ {scalar_t__ cnt; } ;
struct TYPE_6__ {scalar_t__ cnt; } ;
struct myri10ge_slice_state {TYPE_3__ tx; TYPE_2__ rx_big; TYPE_1__ rx_small; TYPE_5__* fw_stats; int * dca_tag; } ;
struct myri10ge_priv {int num_slices; struct myri10ge_slice_state* ss; scalar_t__ link_changes; scalar_t__ dca_enabled; scalar_t__ watchdog_resets; scalar_t__ serial_number; scalar_t__ read_write_dma; scalar_t__ write_dma; scalar_t__ read_dma; scalar_t__ msix_enabled; scalar_t__ msi_enabled; TYPE_4__* pdev; scalar_t__ tx_boundary; } ;
struct ethtool_stats {int dummy; } ;
typedef int link_stats ;
struct TYPE_10__ {int dropped_no_big_buffer; int dropped_no_small_buffer; int dropped_overrun; int dropped_runt; int dropped_multicast_filtered; int dropped_unicast_filtered; int dropped_bad_crc32; int dropped_bad_phy; int dropped_pause; int dropped_link_error_or_filtered; int dropped_link_overflow; int link_up; } ;
struct TYPE_9__ {scalar_t__ irq; } ;


 int MYRI10GE_NET_STATS_LEN ;
 int memset (struct rtnl_link_stats64*,int ,int) ;
 int myri10ge_get_stats (struct net_device*,struct rtnl_link_stats64*) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
myri10ge_get_ethtool_stats(struct net_device *netdev,
      struct ethtool_stats *stats, u64 * data)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 struct myri10ge_slice_state *ss;
 struct rtnl_link_stats64 link_stats;
 int slice;
 int i;


 memset(&link_stats, 0, sizeof(link_stats));
 (void)myri10ge_get_stats(netdev, &link_stats);
 for (i = 0; i < MYRI10GE_NET_STATS_LEN; i++)
  data[i] = ((u64 *)&link_stats)[i];

 data[i++] = (unsigned int)mgp->tx_boundary;
 data[i++] = (unsigned int)mgp->pdev->irq;
 data[i++] = (unsigned int)mgp->msi_enabled;
 data[i++] = (unsigned int)mgp->msix_enabled;
 data[i++] = (unsigned int)mgp->read_dma;
 data[i++] = (unsigned int)mgp->write_dma;
 data[i++] = (unsigned int)mgp->read_write_dma;
 data[i++] = (unsigned int)mgp->serial_number;
 data[i++] = (unsigned int)mgp->watchdog_resets;




 data[i++] = (unsigned int)mgp->link_changes;


 ss = &mgp->ss[0];
 data[i++] = (unsigned int)ntohl(ss->fw_stats->link_up);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_link_overflow);
 data[i++] =
     (unsigned int)ntohl(ss->fw_stats->dropped_link_error_or_filtered);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_pause);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_bad_phy);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_bad_crc32);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_unicast_filtered);
 data[i++] =
     (unsigned int)ntohl(ss->fw_stats->dropped_multicast_filtered);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_runt);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_overrun);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_no_small_buffer);
 data[i++] = (unsigned int)ntohl(ss->fw_stats->dropped_no_big_buffer);

 for (slice = 0; slice < mgp->num_slices; slice++) {
  ss = &mgp->ss[slice];
  data[i++] = slice;
  data[i++] = (unsigned int)ss->tx.pkt_start;
  data[i++] = (unsigned int)ss->tx.pkt_done;
  data[i++] = (unsigned int)ss->tx.req;
  data[i++] = (unsigned int)ss->tx.done;
  data[i++] = (unsigned int)ss->rx_small.cnt;
  data[i++] = (unsigned int)ss->rx_big.cnt;
  data[i++] = (unsigned int)ss->tx.wake_queue;
  data[i++] = (unsigned int)ss->tx.stop_queue;
  data[i++] = (unsigned int)ss->tx.linearized;
 }
}
