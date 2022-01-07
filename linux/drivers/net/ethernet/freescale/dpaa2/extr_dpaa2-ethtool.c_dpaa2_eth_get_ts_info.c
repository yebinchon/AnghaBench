
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int tx_types; int rx_filters; int phc_index; } ;


 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int dpaa2_phc_index ;

__attribute__((used)) static int dpaa2_eth_get_ts_info(struct net_device *dev,
     struct ethtool_ts_info *info)
{
 info->so_timestamping = SOF_TIMESTAMPING_TX_HARDWARE |
    SOF_TIMESTAMPING_RX_HARDWARE |
    SOF_TIMESTAMPING_RAW_HARDWARE;

 info->phc_index = dpaa2_phc_index;

 info->tx_types = (1 << HWTSTAMP_TX_OFF) |
    (1 << HWTSTAMP_TX_ON);

 info->rx_filters = (1 << HWTSTAMP_FILTER_NONE) |
      (1 << HWTSTAMP_FILTER_ALL);
 return 0;
}
