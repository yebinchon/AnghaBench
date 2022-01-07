
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {scalar_t__ rx_fifo_errors; scalar_t__ rx_length_errors; scalar_t__ rx_errors; int tx_errors; scalar_t__ tx_window_errors; scalar_t__ tx_heartbeat_errors; scalar_t__ tx_fifo_errors; scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ rx_missed_errors; scalar_t__ rx_dropped; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_over_errors; int multicast; int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; } ;
struct port_stats {scalar_t__ rx_len_err; scalar_t__ rx_fcs_err; scalar_t__ rx_symbol_err; int tx_error_frames; scalar_t__ rx_trunc3; scalar_t__ rx_trunc2; scalar_t__ rx_trunc1; scalar_t__ rx_trunc0; scalar_t__ rx_ovflow3; scalar_t__ rx_ovflow2; scalar_t__ rx_ovflow1; scalar_t__ rx_ovflow0; scalar_t__ rx_runt; scalar_t__ rx_too_long; scalar_t__ rx_jabber; int rx_mcast_frames; int rx_frames; int rx_octets; int tx_frames; int tx_octets; } ;
struct port_info {int stats_base; int tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int stats_lock; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_get_port_stats_offset (struct adapter*,int ,struct port_stats*,int *) ;

__attribute__((used)) static void cxgb_get_stats(struct net_device *dev,
      struct rtnl_link_stats64 *ns)
{
 struct port_stats stats;
 struct port_info *p = netdev_priv(dev);
 struct adapter *adapter = p->adapter;





 spin_lock(&adapter->stats_lock);
 if (!netif_device_present(dev)) {
  spin_unlock(&adapter->stats_lock);
  return;
 }
 t4_get_port_stats_offset(adapter, p->tx_chan, &stats,
     &p->stats_base);
 spin_unlock(&adapter->stats_lock);

 ns->tx_bytes = stats.tx_octets;
 ns->tx_packets = stats.tx_frames;
 ns->rx_bytes = stats.rx_octets;
 ns->rx_packets = stats.rx_frames;
 ns->multicast = stats.rx_mcast_frames;


 ns->rx_length_errors = stats.rx_jabber + stats.rx_too_long +
          stats.rx_runt;
 ns->rx_over_errors = 0;
 ns->rx_crc_errors = stats.rx_fcs_err;
 ns->rx_frame_errors = stats.rx_symbol_err;
 ns->rx_dropped = stats.rx_ovflow0 + stats.rx_ovflow1 +
          stats.rx_ovflow2 + stats.rx_ovflow3 +
          stats.rx_trunc0 + stats.rx_trunc1 +
          stats.rx_trunc2 + stats.rx_trunc3;
 ns->rx_missed_errors = 0;


 ns->tx_aborted_errors = 0;
 ns->tx_carrier_errors = 0;
 ns->tx_fifo_errors = 0;
 ns->tx_heartbeat_errors = 0;
 ns->tx_window_errors = 0;

 ns->tx_errors = stats.tx_error_frames;
 ns->rx_errors = stats.rx_symbol_err + stats.rx_fcs_err +
  ns->rx_length_errors + stats.rx_len_err + ns->rx_fifo_errors;
}
