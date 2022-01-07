
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct slic_stats {int dummy; } ;
struct slic_device {struct slic_stats stats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int SLIC_GET_STATS_COUNTER (int ,struct slic_stats*,int ) ;
 int irq_errs ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int rx_buff_miss ;
 int rx_buffoflow ;
 int rx_bytes ;
 int rx_crc ;
 int rx_drbl ;
 int rx_early ;
 int rx_errors ;
 int rx_ipcsum ;
 int rx_iphlen ;
 int rx_iplen ;
 int rx_lcode ;
 int rx_mcasts ;
 int rx_oflow802 ;
 int rx_packets ;
 int rx_tpcsum ;
 int rx_tphlen ;
 int rx_tpoflow ;
 int rx_uflow802 ;
 int tx_bytes ;
 int tx_carrier ;
 int tx_dropped ;
 int tx_packets ;

__attribute__((used)) static void slic_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *eth_stats, u64 *data)
{
 struct slic_device *sdev = netdev_priv(dev);
 struct slic_stats *stats = &sdev->stats;

 SLIC_GET_STATS_COUNTER(data[0], stats, rx_packets);
 SLIC_GET_STATS_COUNTER(data[1], stats, rx_bytes);
 SLIC_GET_STATS_COUNTER(data[2], stats, rx_mcasts);
 SLIC_GET_STATS_COUNTER(data[3], stats, rx_errors);
 SLIC_GET_STATS_COUNTER(data[4], stats, rx_buff_miss);
 SLIC_GET_STATS_COUNTER(data[5], stats, rx_tpcsum);
 SLIC_GET_STATS_COUNTER(data[6], stats, rx_tpoflow);
 SLIC_GET_STATS_COUNTER(data[7], stats, rx_tphlen);
 SLIC_GET_STATS_COUNTER(data[8], stats, rx_ipcsum);
 SLIC_GET_STATS_COUNTER(data[9], stats, rx_iplen);
 SLIC_GET_STATS_COUNTER(data[10], stats, rx_iphlen);
 SLIC_GET_STATS_COUNTER(data[11], stats, rx_early);
 SLIC_GET_STATS_COUNTER(data[12], stats, rx_buffoflow);
 SLIC_GET_STATS_COUNTER(data[13], stats, rx_lcode);
 SLIC_GET_STATS_COUNTER(data[14], stats, rx_drbl);
 SLIC_GET_STATS_COUNTER(data[15], stats, rx_crc);
 SLIC_GET_STATS_COUNTER(data[16], stats, rx_oflow802);
 SLIC_GET_STATS_COUNTER(data[17], stats, rx_uflow802);
 SLIC_GET_STATS_COUNTER(data[18], stats, tx_packets);
 SLIC_GET_STATS_COUNTER(data[19], stats, tx_bytes);
 SLIC_GET_STATS_COUNTER(data[20], stats, tx_carrier);
 SLIC_GET_STATS_COUNTER(data[21], stats, tx_dropped);
 SLIC_GET_STATS_COUNTER(data[22], stats, irq_errs);
}
