
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int tstamp_rx_ctrl; scalar_t__ tstamp_tx_ctrl; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; int tx_type; scalar_t__ flags; } ;
typedef int config ;


 int EFAULT ;
 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V2_L2_EVENT ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 int RAVB_RXTSTAMP_TYPE_ALL ;
 int RAVB_RXTSTAMP_TYPE_V2_L2_EVENT ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ravb_hwtstamp_get(struct net_device *ndev, struct ifreq *req)
{
 struct ravb_private *priv = netdev_priv(ndev);
 struct hwtstamp_config config;

 config.flags = 0;
 config.tx_type = priv->tstamp_tx_ctrl ? HWTSTAMP_TX_ON :
      HWTSTAMP_TX_OFF;
 if (priv->tstamp_rx_ctrl & RAVB_RXTSTAMP_TYPE_V2_L2_EVENT)
  config.rx_filter = HWTSTAMP_FILTER_PTP_V2_L2_EVENT;
 else if (priv->tstamp_rx_ctrl & RAVB_RXTSTAMP_TYPE_ALL)
  config.rx_filter = HWTSTAMP_FILTER_ALL;
 else
  config.rx_filter = HWTSTAMP_FILTER_NONE;

 return copy_to_user(req->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
