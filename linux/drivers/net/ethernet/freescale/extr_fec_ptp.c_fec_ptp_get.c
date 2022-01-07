
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; int tx_type; scalar_t__ flags; } ;
struct fec_enet_private {scalar_t__ hwts_rx_en; scalar_t__ hwts_tx_en; } ;
typedef int config ;


 int EFAULT ;
 int HWTSTAMP_FILTER_ALL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

int fec_ptp_get(struct net_device *ndev, struct ifreq *ifr)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct hwtstamp_config config;

 config.flags = 0;
 config.tx_type = fep->hwts_tx_en ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 config.rx_filter = (fep->hwts_rx_en ?
       HWTSTAMP_FILTER_ALL : HWTSTAMP_FILTER_NONE);

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
