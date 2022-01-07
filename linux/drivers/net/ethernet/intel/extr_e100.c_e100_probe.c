
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_3__ {int max; } ;
struct TYPE_4__ {TYPE_1__ cbs; } ;
struct nic {int msg_enable; scalar_t__ mac; int* eeprom; int csr; struct net_device* netdev; int cbs_pool; TYPE_2__ params; struct pci_dev* pdev; int flags; int tx_timeout_task; int watchdog; int mdio_lock; int cmd_lock; int cb_lock; int mdio_ctrl; int napi; } ;
struct net_device {int dev_addr; int name; int features; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; int hw_features; int priv_flags; } ;
struct csr {int dummy; } ;
struct cb {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int E100_NAPI_WEIGHT ;
 int E100_WATCHDOG_PERIOD ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IFF_SUPP_NOFCS ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXFCS ;
 int NETIF_F_VLAN_CHALLENGED ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int debug ;
 int device_set_wakeup_enable (int *,int) ;
 int dma_pool_create (int ,int *,int,int,int ) ;
 int e100_alloc (struct nic*) ;
 int e100_eeprom_load (struct nic*) ;
 int e100_ethtool_ops ;
 int e100_free (struct nic*) ;
 int e100_get_defaults (struct nic*) ;
 int e100_hw_reset (struct nic*) ;
 int e100_netdev_ops ;
 int e100_phy_init (struct nic*) ;
 int e100_poll ;
 int e100_tx_timeout_task ;
 int e100_watchdog ;
 int eeprom_bad_csum_allow ;
 size_t eeprom_id ;
 int eeprom_id_wol ;
 int free_netdev (struct net_device*) ;
 int ich ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ mac_82558_D101_A4 ;
 int mdio_ctrl_hw ;
 int memcpy (int ,int*,int ) ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_err (struct nic*,int ,struct net_device*,char*) ;
 int netif_info (struct nic*,int ,struct net_device*,char*,...) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int,int) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_pme_active (struct pci_dev*,int) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int probe ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;
 int timer_setup (int *,int ,int ) ;
 int unregister_netdev (struct net_device*) ;
 scalar_t__ use_io ;
 int wol_magic ;

__attribute__((used)) static int e100_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct nic *nic;
 int err;

 if (!(netdev = alloc_etherdev(sizeof(struct nic))))
  return -ENOMEM;

 netdev->hw_features |= NETIF_F_RXFCS;
 netdev->priv_flags |= IFF_SUPP_NOFCS;
 netdev->hw_features |= NETIF_F_RXALL;

 netdev->netdev_ops = &e100_netdev_ops;
 netdev->ethtool_ops = &e100_ethtool_ops;
 netdev->watchdog_timeo = E100_WATCHDOG_PERIOD;
 strncpy(netdev->name, pci_name(pdev), sizeof(netdev->name) - 1);

 nic = netdev_priv(netdev);
 netif_napi_add(netdev, &nic->napi, e100_poll, E100_NAPI_WEIGHT);
 nic->netdev = netdev;
 nic->pdev = pdev;
 nic->msg_enable = (1 << debug) - 1;
 nic->mdio_ctrl = mdio_ctrl_hw;
 pci_set_drvdata(pdev, netdev);

 if ((err = pci_enable_device(pdev))) {
  netif_err(nic, probe, nic->netdev, "Cannot enable PCI device, aborting\n");
  goto err_out_free_dev;
 }

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  netif_err(nic, probe, nic->netdev, "Cannot find proper PCI device base address, aborting\n");
  err = -ENODEV;
  goto err_out_disable_pdev;
 }

 if ((err = pci_request_regions(pdev, DRV_NAME))) {
  netif_err(nic, probe, nic->netdev, "Cannot obtain PCI resources, aborting\n");
  goto err_out_disable_pdev;
 }

 if ((err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32)))) {
  netif_err(nic, probe, nic->netdev, "No usable DMA configuration, aborting\n");
  goto err_out_free_res;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 if (use_io)
  netif_info(nic, probe, nic->netdev, "using i/o access mode\n");

 nic->csr = pci_iomap(pdev, (use_io ? 1 : 0), sizeof(struct csr));
 if (!nic->csr) {
  netif_err(nic, probe, nic->netdev, "Cannot map device registers, aborting\n");
  err = -ENOMEM;
  goto err_out_free_res;
 }

 if (ent->driver_data)
  nic->flags |= ich;
 else
  nic->flags &= ~ich;

 e100_get_defaults(nic);


 if (nic->mac < mac_82558_D101_A4)
  netdev->features |= NETIF_F_VLAN_CHALLENGED;


 spin_lock_init(&nic->cb_lock);
 spin_lock_init(&nic->cmd_lock);
 spin_lock_init(&nic->mdio_lock);




 e100_hw_reset(nic);

 pci_set_master(pdev);

 timer_setup(&nic->watchdog, e100_watchdog, 0);

 INIT_WORK(&nic->tx_timeout_task, e100_tx_timeout_task);

 if ((err = e100_alloc(nic))) {
  netif_err(nic, probe, nic->netdev, "Cannot alloc driver memory, aborting\n");
  goto err_out_iounmap;
 }

 if ((err = e100_eeprom_load(nic)))
  goto err_out_free;

 e100_phy_init(nic);

 memcpy(netdev->dev_addr, nic->eeprom, ETH_ALEN);
 if (!is_valid_ether_addr(netdev->dev_addr)) {
  if (!eeprom_bad_csum_allow) {
   netif_err(nic, probe, nic->netdev, "Invalid MAC address from EEPROM, aborting\n");
   err = -EAGAIN;
   goto err_out_free;
  } else {
   netif_err(nic, probe, nic->netdev, "Invalid MAC address from EEPROM, you MUST configure one.\n");
  }
 }


 if ((nic->mac >= mac_82558_D101_A4) &&
    (nic->eeprom[eeprom_id] & eeprom_id_wol)) {
  nic->flags |= wol_magic;
  device_set_wakeup_enable(&pdev->dev, 1);
 }


 pci_pme_active(pdev, 0);

 strcpy(netdev->name, "eth%d");
 if ((err = register_netdev(netdev))) {
  netif_err(nic, probe, nic->netdev, "Cannot register net device, aborting\n");
  goto err_out_free;
 }
 nic->cbs_pool = dma_pool_create(netdev->name,
      &nic->pdev->dev,
      nic->params.cbs.max * sizeof(struct cb),
      sizeof(u32),
      0);
 if (!nic->cbs_pool) {
  netif_err(nic, probe, nic->netdev, "Cannot create DMA pool, aborting\n");
  err = -ENOMEM;
  goto err_out_pool;
 }
 netif_info(nic, probe, nic->netdev,
     "addr 0x%llx, irq %d, MAC addr %pM\n",
     (unsigned long long)pci_resource_start(pdev, use_io ? 1 : 0),
     pdev->irq, netdev->dev_addr);

 return 0;

err_out_pool:
 unregister_netdev(netdev);
err_out_free:
 e100_free(nic);
err_out_iounmap:
 pci_iounmap(pdev, nic->csr);
err_out_free_res:
 pci_release_regions(pdev);
err_out_disable_pdev:
 pci_disable_device(pdev);
err_out_free_dev:
 free_netdev(netdev);
 return err;
}
