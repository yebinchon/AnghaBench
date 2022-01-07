
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {struct dp83640_private* priv; } ;
struct ethtool_ts_info {int so_timestamping; int tx_types; int rx_filters; int phc_index; } ;
struct dp83640_private {TYPE_1__* clock; } ;
struct TYPE_2__ {int ptp_clock; } ;


 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V1_L4_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_L2_EVENT ;
 int HWTSTAMP_FILTER_PTP_V2_L4_EVENT ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int HWTSTAMP_TX_ONESTEP_SYNC ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 int ptp_clock_index (int ) ;

__attribute__((used)) static int dp83640_ts_info(struct phy_device *dev, struct ethtool_ts_info *info)
{
 struct dp83640_private *dp83640 = dev->priv;

 info->so_timestamping =
  SOF_TIMESTAMPING_TX_HARDWARE |
  SOF_TIMESTAMPING_RX_HARDWARE |
  SOF_TIMESTAMPING_RAW_HARDWARE;
 info->phc_index = ptp_clock_index(dp83640->clock->ptp_clock);
 info->tx_types =
  (1 << HWTSTAMP_TX_OFF) |
  (1 << HWTSTAMP_TX_ON) |
  (1 << HWTSTAMP_TX_ONESTEP_SYNC);
 info->rx_filters =
  (1 << HWTSTAMP_FILTER_NONE) |
  (1 << HWTSTAMP_FILTER_PTP_V1_L4_EVENT) |
  (1 << HWTSTAMP_FILTER_PTP_V2_L4_EVENT) |
  (1 << HWTSTAMP_FILTER_PTP_V2_L2_EVENT) |
  (1 << HWTSTAMP_FILTER_PTP_V2_EVENT);
 return 0;
}
