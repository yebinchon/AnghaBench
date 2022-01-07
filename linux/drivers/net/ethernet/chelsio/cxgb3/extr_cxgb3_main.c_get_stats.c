
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int fifo_errors; } ;
struct port_info {TYPE_1__ phy; int mac; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mac_stats {int link_faults; int num_resets; int num_toggled; int rx_cong_drops; int rx_frames_1519_max; int rx_frames_1024_1518; int rx_frames_512_1023; int rx_frames_256_511; int rx_frames_128_255; int rx_frames_65_127; int rx_frames_64; int rx_fifo_ovfl; int rx_too_long; int rx_jabber; int rx_short; int rx_symbol_errs; int rx_fcs_errs; int rx_pause; int rx_bcast_frames; int rx_mcast_frames; int rx_frames; int rx_octets; int tx_frames_1519_max; int tx_frames_1024_1518; int tx_frames_512_1023; int tx_frames_256_511; int tx_frames_128_255; int tx_frames_65_127; int tx_frames_64; int tx_fifo_urun; int tx_underrun; int tx_pause; int tx_bcast_frames; int tx_mcast_frames; int tx_frames; int tx_octets; } ;
struct ethtool_stats {int dummy; } ;
struct adapter {int stats_lock; } ;


 int SGE_PSTAT_RX_CSUM_GOOD ;
 int SGE_PSTAT_TSO ;
 int SGE_PSTAT_TX_CSUM ;
 int SGE_PSTAT_VLANEX ;
 int SGE_PSTAT_VLANINS ;
 void* collect_sge_port_stats (struct adapter*,struct port_info*,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mac_stats* t3_mac_update_stats (int *) ;

__attribute__((used)) static void get_stats(struct net_device *dev, struct ethtool_stats *stats,
        u64 *data)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 const struct mac_stats *s;

 spin_lock(&adapter->stats_lock);
 s = t3_mac_update_stats(&pi->mac);
 spin_unlock(&adapter->stats_lock);

 *data++ = s->tx_octets;
 *data++ = s->tx_frames;
 *data++ = s->tx_mcast_frames;
 *data++ = s->tx_bcast_frames;
 *data++ = s->tx_pause;
 *data++ = s->tx_underrun;
 *data++ = s->tx_fifo_urun;

 *data++ = s->tx_frames_64;
 *data++ = s->tx_frames_65_127;
 *data++ = s->tx_frames_128_255;
 *data++ = s->tx_frames_256_511;
 *data++ = s->tx_frames_512_1023;
 *data++ = s->tx_frames_1024_1518;
 *data++ = s->tx_frames_1519_max;

 *data++ = s->rx_octets;
 *data++ = s->rx_frames;
 *data++ = s->rx_mcast_frames;
 *data++ = s->rx_bcast_frames;
 *data++ = s->rx_pause;
 *data++ = s->rx_fcs_errs;
 *data++ = s->rx_symbol_errs;
 *data++ = s->rx_short;
 *data++ = s->rx_jabber;
 *data++ = s->rx_too_long;
 *data++ = s->rx_fifo_ovfl;

 *data++ = s->rx_frames_64;
 *data++ = s->rx_frames_65_127;
 *data++ = s->rx_frames_128_255;
 *data++ = s->rx_frames_256_511;
 *data++ = s->rx_frames_512_1023;
 *data++ = s->rx_frames_1024_1518;
 *data++ = s->rx_frames_1519_max;

 *data++ = pi->phy.fifo_errors;

 *data++ = collect_sge_port_stats(adapter, pi, SGE_PSTAT_TSO);
 *data++ = collect_sge_port_stats(adapter, pi, SGE_PSTAT_VLANEX);
 *data++ = collect_sge_port_stats(adapter, pi, SGE_PSTAT_VLANINS);
 *data++ = collect_sge_port_stats(adapter, pi, SGE_PSTAT_TX_CSUM);
 *data++ = collect_sge_port_stats(adapter, pi, SGE_PSTAT_RX_CSUM_GOOD);
 *data++ = 0;
 *data++ = 0;
 *data++ = 0;
 *data++ = s->rx_cong_drops;

 *data++ = s->num_toggled;
 *data++ = s->num_resets;

 *data++ = s->link_faults;
}
