
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int phc_index; int so_timestamping; int tx_types; int rx_filters; } ;


 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int enetc_phc_index ;
 int* symbol_get (int ) ;
 int symbol_put (int ) ;

__attribute__((used)) static int enetc_get_ts_info(struct net_device *ndev,
        struct ethtool_ts_info *info)
{
 int *phc_idx;

 phc_idx = symbol_get(enetc_phc_index);
 if (phc_idx) {
  info->phc_index = *phc_idx;
  symbol_put(enetc_phc_index);
 } else {
  info->phc_index = -1;
 }
 info->so_timestamping = SOF_TIMESTAMPING_RX_SOFTWARE |
    SOF_TIMESTAMPING_SOFTWARE;

 return 0;
}
