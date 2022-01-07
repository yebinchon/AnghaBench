
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct gfar_private {int hwts_tx_en; int device_flags; int hwts_rx_en; } ;
typedef int config ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int FSL_GIANFAR_DEV_HAS_TIMER ;
 int HWTSTAMP_FILTER_ALL ;



 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int reset_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 struct gfar_private *priv = netdev_priv(netdev);

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 if (config.flags)
  return -EINVAL;

 switch (config.tx_type) {
 case 129:
  priv->hwts_tx_en = 0;
  break;
 case 128:
  if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_TIMER))
   return -ERANGE;
  priv->hwts_tx_en = 1;
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 130:
  if (priv->hwts_rx_en) {
   priv->hwts_rx_en = 0;
   reset_gfar(netdev);
  }
  break;
 default:
  if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_TIMER))
   return -ERANGE;
  if (!priv->hwts_rx_en) {
   priv->hwts_rx_en = 1;
   reset_gfar(netdev);
  }
  config.rx_filter = HWTSTAMP_FILTER_ALL;
  break;
 }

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
