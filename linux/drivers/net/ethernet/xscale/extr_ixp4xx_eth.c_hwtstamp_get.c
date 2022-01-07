
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int hwts_rx_en; scalar_t__ hwts_tx_en; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; int tx_type; scalar_t__ flags; } ;
typedef int cfg ;


 int EFAULT ;
 int ERANGE ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ ;
 int HWTSTAMP_FILTER_PTP_V1_L4_SYNC ;
 int HWTSTAMP_TX_OFF ;
 int HWTSTAMP_TX_ON ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hwtstamp_get(struct net_device *netdev, struct ifreq *ifr)
{
 struct hwtstamp_config cfg;
 struct port *port = netdev_priv(netdev);

 cfg.flags = 0;
 cfg.tx_type = port->hwts_tx_en ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;

 switch (port->hwts_rx_en) {
 case 0:
  cfg.rx_filter = HWTSTAMP_FILTER_NONE;
  break;
 case 128:
  cfg.rx_filter = HWTSTAMP_FILTER_PTP_V1_L4_SYNC;
  break;
 case 129:
  cfg.rx_filter = HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ;
  break;
 default:
  WARN_ON_ONCE(1);
  return -ERANGE;
 }

 return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
}
