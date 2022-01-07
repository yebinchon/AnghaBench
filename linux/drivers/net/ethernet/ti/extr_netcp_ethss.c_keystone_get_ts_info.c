
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; scalar_t__ rx_filters; scalar_t__ tx_types; } ;


 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;

__attribute__((used)) static int keystone_get_ts_info(struct net_device *ndev,
    struct ethtool_ts_info *info)
{
 info->so_timestamping =
  SOF_TIMESTAMPING_TX_SOFTWARE |
  SOF_TIMESTAMPING_RX_SOFTWARE |
  SOF_TIMESTAMPING_SOFTWARE;
 info->phc_index = -1;
 info->tx_types = 0;
 info->rx_filters = 0;
 return 0;
}
