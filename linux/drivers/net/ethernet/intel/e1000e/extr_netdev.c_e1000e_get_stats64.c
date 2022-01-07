
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_carrier_errors; scalar_t__ tx_window_errors; scalar_t__ tx_aborted_errors; scalar_t__ tx_errors; int rx_missed_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_length_errors; scalar_t__ rx_errors; int collisions; int multicast; int tx_packets; int tx_bytes; int rx_packets; int rx_bytes; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tncrs; scalar_t__ latecol; scalar_t__ ecol; int mpc; scalar_t__ algnerrc; scalar_t__ crcerrs; scalar_t__ roc; scalar_t__ ruc; scalar_t__ cexterr; scalar_t__ rxerrc; int colc; int mprc; int gptc; int gotc; int gprc; int gorc; } ;
struct e1000_adapter {int stats64_lock; TYPE_1__ stats; } ;


 int e1000e_update_stats (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void e1000e_get_stats64(struct net_device *netdev,
   struct rtnl_link_stats64 *stats)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 spin_lock(&adapter->stats64_lock);
 e1000e_update_stats(adapter);

 stats->rx_bytes = adapter->stats.gorc;
 stats->rx_packets = adapter->stats.gprc;
 stats->tx_bytes = adapter->stats.gotc;
 stats->tx_packets = adapter->stats.gptc;
 stats->multicast = adapter->stats.mprc;
 stats->collisions = adapter->stats.colc;






 stats->rx_errors = adapter->stats.rxerrc +
     adapter->stats.crcerrs + adapter->stats.algnerrc +
     adapter->stats.ruc + adapter->stats.roc + adapter->stats.cexterr;
 stats->rx_length_errors = adapter->stats.ruc + adapter->stats.roc;
 stats->rx_crc_errors = adapter->stats.crcerrs;
 stats->rx_frame_errors = adapter->stats.algnerrc;
 stats->rx_missed_errors = adapter->stats.mpc;


 stats->tx_errors = adapter->stats.ecol + adapter->stats.latecol;
 stats->tx_aborted_errors = adapter->stats.ecol;
 stats->tx_window_errors = adapter->stats.latecol;
 stats->tx_carrier_errors = adapter->stats.tncrs;



 spin_unlock(&adapter->stats64_lock);
}
