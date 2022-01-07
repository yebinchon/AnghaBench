
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; int tx_types; int rx_filters; } ;


 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V1_L4_SYNC ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;
 int cpu_is_ixp46x () ;
 int ixp46x_phc_index ;

__attribute__((used)) static int ixp4xx_get_ts_info(struct net_device *dev,
         struct ethtool_ts_info *info)
{
 if (!cpu_is_ixp46x()) {
  info->so_timestamping =
   SOF_TIMESTAMPING_TX_SOFTWARE |
   SOF_TIMESTAMPING_RX_SOFTWARE |
   SOF_TIMESTAMPING_SOFTWARE;
  info->phc_index = -1;
  return 0;
 }
 info->so_timestamping =
  SOF_TIMESTAMPING_TX_HARDWARE |
  SOF_TIMESTAMPING_RX_HARDWARE |
  SOF_TIMESTAMPING_RAW_HARDWARE;
 info->phc_index = ixp46x_phc_index;
 info->tx_types =
  (1 << HWTSTAMP_TX_OFF) |
  (1 << HWTSTAMP_TX_ON);
 info->rx_filters =
  (1 << HWTSTAMP_FILTER_NONE) |
  (1 << HWTSTAMP_FILTER_PTP_V1_L4_SYNC) |
  (1 << HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ);
 return 0;
}
