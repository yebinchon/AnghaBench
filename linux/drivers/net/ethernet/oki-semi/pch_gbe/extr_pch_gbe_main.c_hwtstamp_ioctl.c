
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {int hwts_rx_en; int hwts_tx_en; struct pci_dev* ptp_pdev; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {scalar_t__ tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int cfg ;


 int CAP_MODE0 ;
 int CAP_MODE2 ;
 int EFAULT ;
 int EINVAL ;
 int ERANGE ;





 scalar_t__ HWTSTAMP_TX_OFF ;
 scalar_t__ HWTSTAMP_TX_ON ;
 int MASTER_MODE ;
 int PTP_L2_MULTICAST_SA ;
 int PTP_L4_MULTICAST_SA ;
 int RX_SNAPSHOT_LOCKED ;
 int SLAVE_MODE ;
 int TX_SNAPSHOT_LOCKED ;
 int V2_MODE ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_ch_control_write (struct pci_dev*,int) ;
 int pch_ch_event_write (struct pci_dev*,int) ;
 int pch_set_station_address (int *,struct pci_dev*) ;
 int strcpy (int *,int ) ;

__attribute__((used)) static int hwtstamp_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct hwtstamp_config cfg;
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev;
 u8 station[20];

 if (copy_from_user(&cfg, ifr->ifr_data, sizeof(cfg)))
  return -EFAULT;

 if (cfg.flags)
  return -EINVAL;


 pdev = adapter->ptp_pdev;

 if (cfg.tx_type != HWTSTAMP_TX_OFF && cfg.tx_type != HWTSTAMP_TX_ON)
  return -ERANGE;

 switch (cfg.rx_filter) {
 case 132:
  adapter->hwts_rx_en = 0;
  break;
 case 130:
  adapter->hwts_rx_en = 0;
  pch_ch_control_write(pdev, SLAVE_MODE | CAP_MODE0);
  break;
 case 131:
  adapter->hwts_rx_en = 1;
  pch_ch_control_write(pdev, MASTER_MODE | CAP_MODE0);
  break;
 case 128:
  adapter->hwts_rx_en = 1;
  pch_ch_control_write(pdev, V2_MODE | CAP_MODE2);
  strcpy(station, PTP_L4_MULTICAST_SA);
  pch_set_station_address(station, pdev);
  break;
 case 129:
  adapter->hwts_rx_en = 1;
  pch_ch_control_write(pdev, V2_MODE | CAP_MODE2);
  strcpy(station, PTP_L2_MULTICAST_SA);
  pch_set_station_address(station, pdev);
  break;
 default:
  return -ERANGE;
 }

 adapter->hwts_tx_en = cfg.tx_type == HWTSTAMP_TX_ON;


 pch_ch_event_write(pdev, TX_SNAPSHOT_LOCKED | RX_SNAPSHOT_LOCKED);

 return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
}
