
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ error_state; } ;
struct pch_gbe_hw_stats {scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ tx_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_errors; int collisions; int multicast; int tx_dropped; int tx_bytes; int tx_packets; int rx_dropped; int rx_bytes; int rx_packets; scalar_t__ tx_timeout_count; scalar_t__ tx_length_errors; } ;
struct pch_gbe_adapter {int stats_lock; struct pch_gbe_hw_stats stats; struct pci_dev* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ tx_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_errors; int collisions; int multicast; int tx_dropped; int tx_bytes; int tx_packets; int rx_dropped; int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 scalar_t__ pci_channel_io_normal ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pch_gbe_update_stats(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 struct pch_gbe_hw_stats *stats = &adapter->stats;
 unsigned long flags;





 if ((pdev->error_state) && (pdev->error_state != pci_channel_io_normal))
  return;

 spin_lock_irqsave(&adapter->stats_lock, flags);


 stats->rx_errors = stats->rx_crc_errors + stats->rx_frame_errors;
 stats->tx_errors = stats->tx_length_errors +
     stats->tx_aborted_errors +
     stats->tx_carrier_errors + stats->tx_timeout_count;


 netdev->stats.rx_packets = stats->rx_packets;
 netdev->stats.rx_bytes = stats->rx_bytes;
 netdev->stats.rx_dropped = stats->rx_dropped;
 netdev->stats.tx_packets = stats->tx_packets;
 netdev->stats.tx_bytes = stats->tx_bytes;
 netdev->stats.tx_dropped = stats->tx_dropped;

 netdev->stats.multicast = stats->multicast;
 netdev->stats.collisions = stats->collisions;

 netdev->stats.rx_errors = stats->rx_errors;
 netdev->stats.rx_crc_errors = stats->rx_crc_errors;
 netdev->stats.rx_frame_errors = stats->rx_frame_errors;

 netdev->stats.tx_errors = stats->tx_errors;
 netdev->stats.tx_aborted_errors = stats->tx_aborted_errors;
 netdev->stats.tx_carrier_errors = stats->tx_carrier_errors;

 spin_unlock_irqrestore(&adapter->stats_lock, flags);
}
