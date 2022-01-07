
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int phc_index; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct gfar_private {int device_flags; } ;
struct ethtool_ts_info {int phc_index; int so_timestamping; int tx_types; int rx_filters; } ;
struct device_node {int dummy; } ;


 int FSL_GIANFAR_DEV_HAS_TIMER ;
 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int SOF_TIMESTAMPING_RAW_HARDWARE ;
 int SOF_TIMESTAMPING_RX_HARDWARE ;
 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_HARDWARE ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct ptp_qoriq* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gfar_get_ts_info(struct net_device *dev,
       struct ethtool_ts_info *info)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct platform_device *ptp_dev;
 struct device_node *ptp_node;
 struct ptp_qoriq *ptp = ((void*)0);

 info->phc_index = -1;

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_TIMER)) {
  info->so_timestamping = SOF_TIMESTAMPING_RX_SOFTWARE |
     SOF_TIMESTAMPING_SOFTWARE;
  return 0;
 }

 ptp_node = of_find_compatible_node(((void*)0), ((void*)0), "fsl,etsec-ptp");
 if (ptp_node) {
  ptp_dev = of_find_device_by_node(ptp_node);
  if (ptp_dev)
   ptp = platform_get_drvdata(ptp_dev);
 }

 if (ptp)
  info->phc_index = ptp->phc_index;

 info->so_timestamping = SOF_TIMESTAMPING_TX_HARDWARE |
    SOF_TIMESTAMPING_RX_HARDWARE |
    SOF_TIMESTAMPING_RAW_HARDWARE;
 info->tx_types = (1 << HWTSTAMP_TX_OFF) |
    (1 << HWTSTAMP_TX_ON);
 info->rx_filters = (1 << HWTSTAMP_FILTER_NONE) |
      (1 << HWTSTAMP_FILTER_ALL);
 return 0;
}
