
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int watchdog_timeo; int hw_features; int features; int vlan_features; int name; int dev_addr; scalar_t__ max_mtu; int min_mtu; int * netdev_ops; } ;
struct TYPE_4__ {int hw_addr; int io_base; struct ixgb_adapter* back; } ;
struct ixgb_adapter {int bd_number; TYPE_1__ hw; struct net_device* netdev; int tx_timeout_task; int watchdog_timer; int part_num; scalar_t__ link_duplex; scalar_t__ link_speed; int napi; int msg_enable; struct pci_dev* pdev; } ;


 int BAR_0 ;
 int BAR_1 ;
 int BAR_5 ;
 int DEFAULT_MSG_ENABLE ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int ETH_MIN_MTU ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_IO ;
 scalar_t__ IXGB_MAX_JUMBO_FRAME_SIZE ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int debug ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int is_valid_ether_addr (int ) ;
 int ixgb_check_options (struct ixgb_adapter*) ;
 int ixgb_clean ;
 int ixgb_driver_name ;
 int ixgb_get_ee_mac_addr (TYPE_1__*,int ) ;
 int ixgb_get_ee_pba_number (TYPE_1__*) ;
 int ixgb_netdev_ops ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_ethtool_ops (struct net_device*) ;
 int ixgb_sw_init (struct ixgb_adapter*) ;
 int ixgb_tx_timeout_task ;
 int ixgb_validate_eeprom_checksum (TYPE_1__*) ;
 int ixgb_watchdog ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_err (struct ixgb_adapter*,int ,struct net_device*,char*) ;
 int netif_info (struct ixgb_adapter*,int ,struct net_device*,char*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;
 int probe ;
 int register_netdev (struct net_device*) ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
ixgb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev = ((void*)0);
 struct ixgb_adapter *adapter;
 static int cards_found = 0;
 int pci_using_dac;
 int i;
 int err;

 err = pci_enable_device(pdev);
 if (err)
  return err;

 pci_using_dac = 0;
 err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (!err) {
  pci_using_dac = 1;
 } else {
  err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   pr_err("No usable DMA configuration, aborting\n");
   goto err_dma_mask;
  }
 }

 err = pci_request_regions(pdev, ixgb_driver_name);
 if (err)
  goto err_request_regions;

 pci_set_master(pdev);

 netdev = alloc_etherdev(sizeof(struct ixgb_adapter));
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 pci_set_drvdata(pdev, netdev);
 adapter = netdev_priv(netdev);
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 adapter->hw.back = adapter;
 adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);

 adapter->hw.hw_addr = pci_ioremap_bar(pdev, BAR_0);
 if (!adapter->hw.hw_addr) {
  err = -EIO;
  goto err_ioremap;
 }

 for (i = BAR_1; i <= BAR_5; i++) {
  if (pci_resource_len(pdev, i) == 0)
   continue;
  if (pci_resource_flags(pdev, i) & IORESOURCE_IO) {
   adapter->hw.io_base = pci_resource_start(pdev, i);
   break;
  }
 }

 netdev->netdev_ops = &ixgb_netdev_ops;
 ixgb_set_ethtool_ops(netdev);
 netdev->watchdog_timeo = 5 * HZ;
 netif_napi_add(netdev, &adapter->napi, ixgb_clean, 64);

 strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);

 adapter->bd_number = cards_found;
 adapter->link_speed = 0;
 adapter->link_duplex = 0;



 err = ixgb_sw_init(adapter);
 if (err)
  goto err_sw_init;

 netdev->hw_features = NETIF_F_SG |
      NETIF_F_TSO |
      NETIF_F_HW_CSUM |
      NETIF_F_HW_VLAN_CTAG_TX |
      NETIF_F_HW_VLAN_CTAG_RX;
 netdev->features = netdev->hw_features |
      NETIF_F_HW_VLAN_CTAG_FILTER;
 netdev->hw_features |= NETIF_F_RXCSUM;

 if (pci_using_dac) {
  netdev->features |= NETIF_F_HIGHDMA;
  netdev->vlan_features |= NETIF_F_HIGHDMA;
 }


 netdev->min_mtu = ETH_MIN_MTU;
 netdev->max_mtu = IXGB_MAX_JUMBO_FRAME_SIZE - ETH_HLEN;



 if (!ixgb_validate_eeprom_checksum(&adapter->hw)) {
  netif_err(adapter, probe, adapter->netdev,
     "The EEPROM Checksum Is Not Valid\n");
  err = -EIO;
  goto err_eeprom;
 }

 ixgb_get_ee_mac_addr(&adapter->hw, netdev->dev_addr);

 if (!is_valid_ether_addr(netdev->dev_addr)) {
  netif_err(adapter, probe, adapter->netdev, "Invalid MAC Address\n");
  err = -EIO;
  goto err_eeprom;
 }

 adapter->part_num = ixgb_get_ee_pba_number(&adapter->hw);

 timer_setup(&adapter->watchdog_timer, ixgb_watchdog, 0);

 INIT_WORK(&adapter->tx_timeout_task, ixgb_tx_timeout_task);

 strcpy(netdev->name, "eth%d");
 err = register_netdev(netdev);
 if (err)
  goto err_register;


 netif_carrier_off(netdev);

 netif_info(adapter, probe, adapter->netdev,
     "Intel(R) PRO/10GbE Network Connection\n");
 ixgb_check_options(adapter);


 ixgb_reset(adapter);

 cards_found++;
 return 0;

err_register:
err_sw_init:
err_eeprom:
 iounmap(adapter->hw.hw_addr);
err_ioremap:
 free_netdev(netdev);
err_alloc_etherdev:
 pci_release_regions(pdev);
err_request_regions:
err_dma_mask:
 pci_disable_device(pdev);
 return err;
}
