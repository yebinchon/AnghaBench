
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtnl_link_stats64 {scalar_t__ tx_aborted_errors; scalar_t__ collisions; scalar_t__ tx_errors; int multicast; int rx_missed_errors; int rx_fifo_errors; int rx_crc_errors; int rx_errors; int rx_length_errors; int tx_dropped; int rx_dropped; int tx_bytes; int tx_packets; int rx_bytes; int rx_packets; } ;
struct TYPE_8__ {int tx_aborted; int tx_multi_collision; int tx_errors; } ;
struct TYPE_6__ {int bytes; int packets; int syncp; } ;
struct TYPE_5__ {int bytes; int packets; int syncp; } ;
struct rtl8169_private {TYPE_4__ tc_offset; TYPE_2__ tx_stats; TYPE_1__ rx_stats; struct rtl8169_counters* counters; struct pci_dev* pci_dev; } ;
struct rtl8169_counters {int tx_aborted; int tx_multi_collision; int tx_errors; } ;
struct pci_dev {int dev; } ;
struct TYPE_7__ {int multicast; int rx_missed_errors; int rx_fifo_errors; int rx_crc_errors; int rx_errors; int rx_length_errors; int tx_dropped; int rx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pm_runtime_active (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int rtl8169_rx_missed (struct net_device*) ;
 int rtl8169_update_counters (struct rtl8169_private*) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void
rtl8169_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;
 struct rtl8169_counters *counters = tp->counters;
 unsigned int start;

 pm_runtime_get_noresume(&pdev->dev);

 if (netif_running(dev) && pm_runtime_active(&pdev->dev))
  rtl8169_rx_missed(dev);

 do {
  start = u64_stats_fetch_begin_irq(&tp->rx_stats.syncp);
  stats->rx_packets = tp->rx_stats.packets;
  stats->rx_bytes = tp->rx_stats.bytes;
 } while (u64_stats_fetch_retry_irq(&tp->rx_stats.syncp, start));

 do {
  start = u64_stats_fetch_begin_irq(&tp->tx_stats.syncp);
  stats->tx_packets = tp->tx_stats.packets;
  stats->tx_bytes = tp->tx_stats.bytes;
 } while (u64_stats_fetch_retry_irq(&tp->tx_stats.syncp, start));

 stats->rx_dropped = dev->stats.rx_dropped;
 stats->tx_dropped = dev->stats.tx_dropped;
 stats->rx_length_errors = dev->stats.rx_length_errors;
 stats->rx_errors = dev->stats.rx_errors;
 stats->rx_crc_errors = dev->stats.rx_crc_errors;
 stats->rx_fifo_errors = dev->stats.rx_fifo_errors;
 stats->rx_missed_errors = dev->stats.rx_missed_errors;
 stats->multicast = dev->stats.multicast;





 if (pm_runtime_active(&pdev->dev))
  rtl8169_update_counters(tp);





 stats->tx_errors = le64_to_cpu(counters->tx_errors) -
  le64_to_cpu(tp->tc_offset.tx_errors);
 stats->collisions = le32_to_cpu(counters->tx_multi_collision) -
  le32_to_cpu(tp->tc_offset.tx_multi_collision);
 stats->tx_aborted_errors = le16_to_cpu(counters->tx_aborted) -
  le16_to_cpu(tp->tc_offset.tx_aborted);

 pm_runtime_put_noidle(&pdev->dev);
}
