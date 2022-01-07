
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; scalar_t__ rx_filter; } ;
struct dpaa_priv {int tx_tstamp; int rx_tstamp; TYPE_1__* mac_dev; } ;
typedef int config ;
struct TYPE_2__ {int fman_mac; int (* set_tstamp ) (int ,int) ;} ;


 int EFAULT ;
 int ERANGE ;
 scalar_t__ HWTSTAMP_FILTER_ALL ;
 scalar_t__ HWTSTAMP_FILTER_NONE ;


 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct dpaa_priv* netdev_priv (struct net_device*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static int dpaa_ts_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct dpaa_priv *priv = netdev_priv(dev);
 struct hwtstamp_config config;

 if (copy_from_user(&config, rq->ifr_data, sizeof(config)))
  return -EFAULT;

 switch (config.tx_type) {
 case 129:



  priv->tx_tstamp = 0;
  break;
 case 128:
  priv->mac_dev->set_tstamp(priv->mac_dev->fman_mac, 1);
  priv->tx_tstamp = 1;
  break;
 default:
  return -ERANGE;
 }

 if (config.rx_filter == HWTSTAMP_FILTER_NONE) {



  priv->rx_tstamp = 0;
 } else {
  priv->mac_dev->set_tstamp(priv->mac_dev->fman_mac, 1);
  priv->rx_tstamp = 1;

  config.rx_filter = HWTSTAMP_FILTER_ALL;
 }

 return copy_to_user(rq->ifr_data, &config, sizeof(config)) ?
   -EFAULT : 0;
}
