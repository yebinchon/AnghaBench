
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; scalar_t__ rx_filter; } ;
struct dpaa2_eth_priv {int tx_tstamp; int rx_tstamp; } ;
typedef int config ;


 int EFAULT ;
 int ERANGE ;
 scalar_t__ HWTSTAMP_FILTER_ALL ;
 scalar_t__ HWTSTAMP_FILTER_NONE ;


 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa2_eth_ts_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct dpaa2_eth_priv *priv = netdev_priv(dev);
 struct hwtstamp_config config;

 if (copy_from_user(&config, rq->ifr_data, sizeof(config)))
  return -EFAULT;

 switch (config.tx_type) {
 case 129:
  priv->tx_tstamp = 0;
  break;
 case 128:
  priv->tx_tstamp = 1;
  break;
 default:
  return -ERANGE;
 }

 if (config.rx_filter == HWTSTAMP_FILTER_NONE) {
  priv->rx_tstamp = 0;
 } else {
  priv->rx_tstamp = 1;

  config.rx_filter = HWTSTAMP_FILTER_ALL;
 }

 return copy_to_user(rq->ifr_data, &config, sizeof(config)) ?
   -EFAULT : 0;
}
