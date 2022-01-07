
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock; } ;
struct ravb_private {TYPE_1__ ptp; } ;
struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int tx_types; int rx_filters; int phc_index; } ;


 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V2_L2_EVENT ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ptp_clock_index (int ) ;

__attribute__((used)) static int ravb_get_ts_info(struct net_device *ndev,
       struct ethtool_ts_info *info)
{
 struct ravb_private *priv = netdev_priv(ndev);

 info->so_timestamping =
  SOF_TIMESTAMPING_TX_SOFTWARE |
  SOF_TIMESTAMPING_RX_SOFTWARE |
  SOF_TIMESTAMPING_SOFTWARE |
  SOF_TIMESTAMPING_TX_HARDWARE |
  SOF_TIMESTAMPING_RX_HARDWARE |
  SOF_TIMESTAMPING_RAW_HARDWARE;
 info->tx_types = (1 << HWTSTAMP_TX_OFF) | (1 << HWTSTAMP_TX_ON);
 info->rx_filters =
  (1 << HWTSTAMP_FILTER_NONE) |
  (1 << HWTSTAMP_FILTER_PTP_V2_L2_EVENT) |
  (1 << HWTSTAMP_FILTER_ALL);
 info->phc_index = ptp_clock_index(priv->ptp.clock);

 return 0;
}
