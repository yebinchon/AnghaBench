
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int phydev; int dev_addr; int * ethtool_ops; int max_mtu; int min_mtu; int * netdev_ops; int watchdog_timeo; } ;
struct et131x_adapter {TYPE_4__* regs; TYPE_5__* mii_bus; scalar_t__ boot_coma; TYPE_3__* pdev; int addr; int napi; } ;
struct TYPE_14__ {char* name; int write; int read; struct net_device* priv; int id; } ;
struct TYPE_10__ {int pm_csr; } ;
struct TYPE_13__ {TYPE_1__ global; } ;
struct TYPE_12__ {int devfn; TYPE_2__* bus; } ;
struct TYPE_11__ {int number; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_NAME ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ET131X_MAX_MTU ;
 int ET131X_MIN_MTU ;
 int ET131X_TX_TIMEOUT ;
 int ET_PMCSR_INIT ;
 int IORESOURCE_MEM ;
 int MII_BUS_ID_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_set_mask_and_coherent (int *,int ) ;
 int et1310_disable_phy_coma (struct et131x_adapter*) ;
 struct et131x_adapter* et131x_adapter_init (struct net_device*,struct pci_dev*) ;
 int et131x_adapter_memory_alloc (struct et131x_adapter*) ;
 int et131x_adapter_memory_free (struct et131x_adapter*) ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_disable_interrupts (struct et131x_adapter*) ;
 int et131x_ethtool_ops ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_mdio_read ;
 int et131x_mdio_write ;
 int et131x_mii_probe (struct net_device*) ;
 int et131x_netdev_ops ;
 int et131x_pci_init (struct et131x_adapter*,struct pci_dev*) ;
 int et131x_poll ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int ether_addr_copy (int ,int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (TYPE_4__*) ;
 TYPE_5__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_5__*) ;
 int mdiobus_register (TYPE_5__*) ;
 int mdiobus_unregister (TYPE_5__*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 TYPE_4__* pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int phy_disconnect (int ) ;
 int register_netdev (struct net_device*) ;
 int snprintf (int ,int ,char*,int) ;
 int writel (int ,int *) ;

__attribute__((used)) static int et131x_pci_setup(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct et131x_adapter *adapter;
 int rc;

 rc = pci_enable_device(pdev);
 if (rc < 0) {
  dev_err(&pdev->dev, "pci_enable_device() failed\n");
  goto out;
 }


 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  dev_err(&pdev->dev, "Can't find PCI device's base address\n");
  rc = -ENODEV;
  goto err_disable;
 }

 rc = pci_request_regions(pdev, DRIVER_NAME);
 if (rc < 0) {
  dev_err(&pdev->dev, "Can't get PCI resources\n");
  goto err_disable;
 }

 pci_set_master(pdev);


 if (dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64)) &&
     dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32))) {
  dev_err(&pdev->dev, "No usable DMA addressing method\n");
  rc = -EIO;
  goto err_release_res;
 }

 netdev = alloc_etherdev(sizeof(struct et131x_adapter));
 if (!netdev) {
  dev_err(&pdev->dev, "Couldn't alloc netdev struct\n");
  rc = -ENOMEM;
  goto err_release_res;
 }

 netdev->watchdog_timeo = ET131X_TX_TIMEOUT;
 netdev->netdev_ops = &et131x_netdev_ops;
 netdev->min_mtu = ET131X_MIN_MTU;
 netdev->max_mtu = ET131X_MAX_MTU;

 SET_NETDEV_DEV(netdev, &pdev->dev);
 netdev->ethtool_ops = &et131x_ethtool_ops;

 adapter = et131x_adapter_init(netdev, pdev);

 rc = et131x_pci_init(adapter, pdev);
 if (rc < 0)
  goto err_free_dev;


 adapter->regs = pci_ioremap_bar(pdev, 0);
 if (!adapter->regs) {
  dev_err(&pdev->dev, "Cannot map device registers\n");
  rc = -ENOMEM;
  goto err_free_dev;
 }


 writel(ET_PMCSR_INIT, &adapter->regs->global.pm_csr);

 et131x_soft_reset(adapter);
 et131x_disable_interrupts(adapter);

 rc = et131x_adapter_memory_alloc(adapter);
 if (rc < 0) {
  dev_err(&pdev->dev, "Could not alloc adapter memory (DMA)\n");
  goto err_iounmap;
 }

 et131x_init_send(adapter);

 netif_napi_add(netdev, &adapter->napi, et131x_poll, 64);

 ether_addr_copy(netdev->dev_addr, adapter->addr);

 rc = -ENOMEM;

 adapter->mii_bus = mdiobus_alloc();
 if (!adapter->mii_bus) {
  dev_err(&pdev->dev, "Alloc of mii_bus struct failed\n");
  goto err_mem_free;
 }

 adapter->mii_bus->name = "et131x_eth_mii";
 snprintf(adapter->mii_bus->id, MII_BUS_ID_SIZE, "%x",
   (adapter->pdev->bus->number << 8) | adapter->pdev->devfn);
 adapter->mii_bus->priv = netdev;
 adapter->mii_bus->read = et131x_mdio_read;
 adapter->mii_bus->write = et131x_mdio_write;

 rc = mdiobus_register(adapter->mii_bus);
 if (rc < 0) {
  dev_err(&pdev->dev, "failed to register MII bus\n");
  goto err_mdio_free;
 }

 rc = et131x_mii_probe(netdev);
 if (rc < 0) {
  dev_err(&pdev->dev, "failed to probe MII bus\n");
  goto err_mdio_unregister;
 }

 et131x_adapter_setup(adapter);


 adapter->boot_coma = 0;
 et1310_disable_phy_coma(adapter);
 rc = register_netdev(netdev);
 if (rc < 0) {
  dev_err(&pdev->dev, "register_netdev() failed\n");
  goto err_phy_disconnect;
 }





 pci_set_drvdata(pdev, netdev);
out:
 return rc;

err_phy_disconnect:
 phy_disconnect(netdev->phydev);
err_mdio_unregister:
 mdiobus_unregister(adapter->mii_bus);
err_mdio_free:
 mdiobus_free(adapter->mii_bus);
err_mem_free:
 et131x_adapter_memory_free(adapter);
err_iounmap:
 iounmap(adapter->regs);
err_free_dev:
 pci_dev_put(pdev);
 free_netdev(netdev);
err_release_res:
 pci_release_regions(pdev);
err_disable:
 pci_disable_device(pdev);
 goto out;
}
