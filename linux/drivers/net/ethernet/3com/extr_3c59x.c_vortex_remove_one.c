
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int drv_flags; int rx_ring_dma; int rx_ring; scalar_t__ ioaddr; scalar_t__ pm_state_valid; scalar_t__ cb_fn_base; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct boom_tx_desc {int dummy; } ;
struct boom_rx_desc {int dummy; } ;


 int BUG () ;
 int EEPROM_RESET ;
 scalar_t__ EL3_CMD ;
 int PCI_D0 ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int TotalReset ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int iowrite16 (int,scalar_t__) ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pr_err (char*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void vortex_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct vortex_private *vp;

 if (!dev) {
  pr_err("vortex_remove_one called for Compaq device!\n");
  BUG();
 }

 vp = netdev_priv(dev);

 if (vp->cb_fn_base)
  pci_iounmap(pdev, vp->cb_fn_base);

 unregister_netdev(dev);

 pci_set_power_state(pdev, PCI_D0);
 if (vp->pm_state_valid)
  pci_restore_state(pdev);
 pci_disable_device(pdev);


 iowrite16(TotalReset | ((vp->drv_flags & EEPROM_RESET) ? 0x04 : 0x14),
      vp->ioaddr + EL3_CMD);

 pci_iounmap(pdev, vp->ioaddr);

 dma_free_coherent(&pdev->dev,
   sizeof(struct boom_rx_desc) * RX_RING_SIZE +
   sizeof(struct boom_tx_desc) * TX_RING_SIZE,
   vp->rx_ring, vp->rx_ring_dma);

 pci_release_regions(pdev);

 free_netdev(dev);
}
