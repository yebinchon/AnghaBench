
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct fec_enet_private {int hwts_tx_en; int hwts_rx_en; } ;
typedef int config ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int HWTSTAMP_FILTER_ALL ;



 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

int fec_ptp_set(struct net_device *ndev, struct ifreq *ifr)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 struct hwtstamp_config config;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 if (config.flags)
  return -EINVAL;

 switch (config.tx_type) {
 case 129:
  fep->hwts_tx_en = 0;
  break;
 case 128:
  fep->hwts_tx_en = 1;
  break;
 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 130:
  if (fep->hwts_rx_en)
   fep->hwts_rx_en = 0;
  config.rx_filter = 130;
  break;

 default:
  fep->hwts_rx_en = 1;
  config.rx_filter = HWTSTAMP_FILTER_ALL;
  break;
 }

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
     -EFAULT : 0;
}
