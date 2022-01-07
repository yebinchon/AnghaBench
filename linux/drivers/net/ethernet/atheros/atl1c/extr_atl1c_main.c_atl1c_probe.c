
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int addr_len; int dev_addr; int addr_assign_type; } ;
struct TYPE_9__ {int hw_addr; int mac_addr; struct atl1c_adapter* adapter; } ;
struct TYPE_8__ {int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct atl1c_adapter {int bd_number; TYPE_2__ hw; scalar_t__ work_event; int common_task; int phy_config_timer; int napi; TYPE_1__ mii; int msg_enable; struct pci_dev* pdev; struct net_device* netdev; } ;


 int ATL1C_DRV_VERSION ;
 int ATL1C_PCIE_L0S_L1_DISABLE ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MDIO_CTRL_REG_MASK ;
 int NET_ADDR_RANDOM ;
 struct net_device* alloc_etherdev (int) ;
 int atl1c_clean ;
 int atl1c_common_task ;
 int atl1c_default_msg ;
 int atl1c_driver_name ;
 int atl1c_hw_set_mac_addr (TYPE_2__*,int ) ;
 int atl1c_init_netdev (struct net_device*,struct pci_dev*) ;
 int atl1c_mdio_read ;
 int atl1c_mdio_write ;
 int atl1c_phy_config ;
 int atl1c_phy_init (TYPE_2__*) ;
 int atl1c_phy_reset (TYPE_2__*) ;
 scalar_t__ atl1c_read_mac_addr (TYPE_2__*) ;
 int atl1c_reset_mac (TYPE_2__*) ;
 int atl1c_reset_pcie (TYPE_2__*,int ) ;
 int atl1c_set_max_mtu (struct net_device*) ;
 int atl1c_sw_init (struct atl1c_adapter*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int free_netdev (struct net_device*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int memcpy (int ,int ,int ) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int netif_msg_init (int,int ) ;
 scalar_t__ netif_msg_probe (struct atl1c_adapter*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int atl1c_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct atl1c_adapter *adapter;
 static int cards_found;

 int err = 0;


 err = pci_enable_device_mem(pdev);
 if (err) {
  dev_err(&pdev->dev, "cannot enable PCI device\n");
  return err;
 }
 if ((pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0) ||
     (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)) != 0)) {
  dev_err(&pdev->dev, "No usable DMA configuration,aborting\n");
  goto err_dma;
 }

 err = pci_request_regions(pdev, atl1c_driver_name);
 if (err) {
  dev_err(&pdev->dev, "cannot obtain PCI resources\n");
  goto err_pci_reg;
 }

 pci_set_master(pdev);

 netdev = alloc_etherdev(sizeof(struct atl1c_adapter));
 if (netdev == ((void*)0)) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 err = atl1c_init_netdev(netdev, pdev);
 if (err) {
  dev_err(&pdev->dev, "init netdevice failed\n");
  goto err_init_netdev;
 }
 adapter = netdev_priv(netdev);
 adapter->bd_number = cards_found;
 adapter->netdev = netdev;
 adapter->pdev = pdev;
 adapter->hw.adapter = adapter;
 adapter->msg_enable = netif_msg_init(-1, atl1c_default_msg);
 adapter->hw.hw_addr = ioremap(pci_resource_start(pdev, 0), pci_resource_len(pdev, 0));
 if (!adapter->hw.hw_addr) {
  err = -EIO;
  dev_err(&pdev->dev, "cannot map device registers\n");
  goto err_ioremap;
 }


 adapter->mii.dev = netdev;
 adapter->mii.mdio_read = atl1c_mdio_read;
 adapter->mii.mdio_write = atl1c_mdio_write;
 adapter->mii.phy_id_mask = 0x1f;
 adapter->mii.reg_num_mask = MDIO_CTRL_REG_MASK;
 netif_napi_add(netdev, &adapter->napi, atl1c_clean, 64);
 timer_setup(&adapter->phy_config_timer, atl1c_phy_config, 0);

 err = atl1c_sw_init(adapter);
 if (err) {
  dev_err(&pdev->dev, "net device private data init failed\n");
  goto err_sw_init;
 }

 atl1c_set_max_mtu(netdev);

 atl1c_reset_pcie(&adapter->hw, ATL1C_PCIE_L0S_L1_DISABLE);


 atl1c_phy_reset(&adapter->hw);

 err = atl1c_reset_mac(&adapter->hw);
 if (err) {
  err = -EIO;
  goto err_reset;
 }



 err = atl1c_phy_init(&adapter->hw);
 if (err) {
  err = -EIO;
  goto err_reset;
 }
 if (atl1c_read_mac_addr(&adapter->hw)) {

  netdev->addr_assign_type = NET_ADDR_RANDOM;
 }
 memcpy(netdev->dev_addr, adapter->hw.mac_addr, netdev->addr_len);
 if (netif_msg_probe(adapter))
  dev_dbg(&pdev->dev, "mac address : %pM\n",
   adapter->hw.mac_addr);

 atl1c_hw_set_mac_addr(&adapter->hw, adapter->hw.mac_addr);
 INIT_WORK(&adapter->common_task, atl1c_common_task);
 adapter->work_event = 0;
 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "register netdevice failed\n");
  goto err_register;
 }

 if (netif_msg_probe(adapter))
  dev_info(&pdev->dev, "version %s\n", ATL1C_DRV_VERSION);
 cards_found++;
 return 0;

err_reset:
err_register:
err_sw_init:
 iounmap(adapter->hw.hw_addr);
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
