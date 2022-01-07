
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {int regs; int napi; struct net_device* netdev; struct pci_dev* pdev; int is_fiber; int model; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int dev; int subsystem_device; int irq; } ;
struct net_device {int * ethtool_ops; int hw_features; int features; int * netdev_ops; int irq; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENOMEM ;
 int NETIF_F_RXCSUM ;
 scalar_t__ PCI_DEVICE_ID_ALACRITECH_OASIS ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SLIC_MODEL_MOJAVE ;
 int SLIC_MODEL_OASIS ;
 int SLIC_NAPI_WEIGHT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int *,char*,...) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_try_set_mwi (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int slic_configure_pci (struct pci_dev*) ;
 int slic_ethtool_ops ;
 int slic_init (struct slic_device*) ;
 int slic_is_fiber (int ) ;
 int slic_netdev_ops ;
 int slic_poll ;

__attribute__((used)) static int slic_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct slic_device *sdev;
 struct net_device *dev;
 int err;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "failed to enable PCI device\n");
  return err;
 }

 pci_set_master(pdev);
 pci_try_set_mwi(pdev);

 slic_configure_pci(pdev);

 err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
 if (err) {
  dev_err(&pdev->dev, "failed to setup DMA\n");
  goto disable;
 }

 dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(&pdev->dev, "failed to obtain PCI regions\n");
  goto disable;
 }

 dev = alloc_etherdev(sizeof(*sdev));
 if (!dev) {
  dev_err(&pdev->dev, "failed to alloc ethernet device\n");
  err = -ENOMEM;
  goto free_regions;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);
 pci_set_drvdata(pdev, dev);
 dev->irq = pdev->irq;
 dev->netdev_ops = &slic_netdev_ops;
 dev->hw_features = NETIF_F_RXCSUM;
 dev->features |= dev->hw_features;

 dev->ethtool_ops = &slic_ethtool_ops;

 sdev = netdev_priv(dev);
 sdev->model = (pdev->device == PCI_DEVICE_ID_ALACRITECH_OASIS) ?
        SLIC_MODEL_OASIS : SLIC_MODEL_MOJAVE;
 sdev->is_fiber = slic_is_fiber(pdev->subsystem_device);
 sdev->pdev = pdev;
 sdev->netdev = dev;
 sdev->regs = ioremap_nocache(pci_resource_start(pdev, 0),
         pci_resource_len(pdev, 0));
 if (!sdev->regs) {
  dev_err(&pdev->dev, "failed to map registers\n");
  err = -ENOMEM;
  goto free_netdev;
 }

 err = slic_init(sdev);
 if (err) {
  dev_err(&pdev->dev, "failed to initialize driver\n");
  goto unmap;
 }

 netif_napi_add(dev, &sdev->napi, slic_poll, SLIC_NAPI_WEIGHT);
 netif_carrier_off(dev);

 err = register_netdev(dev);
 if (err) {
  dev_err(&pdev->dev, "failed to register net device: %i\n", err);
  goto unmap;
 }

 return 0;

unmap:
 iounmap(sdev->regs);
free_netdev:
 free_netdev(dev);
free_regions:
 pci_release_regions(pdev);
disable:
 pci_disable_device(pdev);

 return err;
}
