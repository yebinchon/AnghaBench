
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_6__ {int hw_addr; int mac_addr; struct atl1e_adapter* adapter; } ;
struct TYPE_5__ {int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct atl1e_adapter {int bd_number; TYPE_2__ hw; int link_chg_task; int reset_task; int phy_config_timer; int napi; TYPE_1__ mii; struct pci_dev* pdev; struct net_device* netdev; } ;


 int BAR_0 ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MAX_TSO_SEG_SIZE ;
 int MDIO_REG_ADDR_MASK ;
 struct net_device* alloc_etherdev (int) ;
 int atl1e_check_options (struct atl1e_adapter*) ;
 int atl1e_clean ;
 int atl1e_driver_name ;
 int atl1e_init_netdev (struct net_device*,struct pci_dev*) ;
 int atl1e_link_chg_task ;
 int atl1e_mdio_read ;
 int atl1e_mdio_write ;
 int atl1e_phy_config ;
 int atl1e_phy_init (TYPE_2__*) ;
 scalar_t__ atl1e_read_mac_addr (TYPE_2__*) ;
 int atl1e_reset_hw (TYPE_2__*) ;
 int atl1e_reset_task ;
 int atl1e_setup_pcicmd (struct pci_dev*) ;
 int atl1e_sw_init (struct atl1e_adapter*) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_set_gso_max_size (struct net_device*,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int atl1e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct atl1e_adapter *adapter = ((void*)0);
 static int cards_found;

 int err = 0;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "cannot enable PCI device\n");
  return err;
 }
 if ((pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0) ||
     (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)) != 0)) {
  dev_err(&pdev->dev, "No usable DMA configuration,aborting\n");
  goto err_dma;
 }

 err = pci_request_regions(pdev, atl1e_driver_name);
 if (err) {
  dev_err(&pdev->dev, "cannot obtain PCI resources\n");
  goto err_pci_reg;
 }

 pci_set_master(pdev);

 netdev = alloc_etherdev(sizeof(struct atl1e_adapter));
 if (netdev == ((void*)0)) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 err = atl1e_init_netdev(netdev, pdev);
 if (err) {
  netdev_err(netdev, "init netdevice failed\n");
  goto err_init_netdev;
 }
 adapter = netdev_priv(netdev);
 adapter->bd_number = cards_found;
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 adapter->hw.adapter = adapter;
 adapter->hw.hw_addr = pci_iomap(pdev, BAR_0, 0);
 if (!adapter->hw.hw_addr) {
  err = -EIO;
  netdev_err(netdev, "cannot map device registers\n");
  goto err_ioremap;
 }


 adapter->mii.dev = netdev;
 adapter->mii.mdio_read = atl1e_mdio_read;
 adapter->mii.mdio_write = atl1e_mdio_write;
 adapter->mii.phy_id_mask = 0x1f;
 adapter->mii.reg_num_mask = MDIO_REG_ADDR_MASK;

 netif_napi_add(netdev, &adapter->napi, atl1e_clean, 64);

 timer_setup(&adapter->phy_config_timer, atl1e_phy_config, 0);


 atl1e_check_options(adapter);






 atl1e_setup_pcicmd(pdev);

 err = atl1e_sw_init(adapter);
 if (err) {
  netdev_err(netdev, "net device private data init failed\n");
  goto err_sw_init;
 }


 atl1e_phy_init(&adapter->hw);


 err = atl1e_reset_hw(&adapter->hw);
 if (err) {
  err = -EIO;
  goto err_reset;
 }

 if (atl1e_read_mac_addr(&adapter->hw) != 0) {
  err = -EIO;
  netdev_err(netdev, "get mac address failed\n");
  goto err_eeprom;
 }

 memcpy(netdev->dev_addr, adapter->hw.mac_addr, netdev->addr_len);
 netdev_dbg(netdev, "mac address : %pM\n", adapter->hw.mac_addr);

 INIT_WORK(&adapter->reset_task, atl1e_reset_task);
 INIT_WORK(&adapter->link_chg_task, atl1e_link_chg_task);
 netif_set_gso_max_size(netdev, MAX_TSO_SEG_SIZE);
 err = register_netdev(netdev);
 if (err) {
  netdev_err(netdev, "register netdevice failed\n");
  goto err_register;
 }


 netif_stop_queue(netdev);
 netif_carrier_off(netdev);

 cards_found++;

 return 0;

err_reset:
err_register:
err_sw_init:
err_eeprom:
 pci_iounmap(pdev, adapter->hw.hw_addr);
err_init_netdev:
err_ioremap:
 free_netdev(netdev);
err_alloc_etherdev:
 pci_release_regions(pdev);
err_pci_reg:
err_dma:
 pci_disable_device(pdev);
 return err;
}
