
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis900_private {int ioaddr; int tx_ring_dma; int tx_ring; int rx_ring_dma; int rx_ring; struct mii_phy* first_mii; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_phy {struct mii_phy* next; } ;


 int RX_TOTAL_SIZE ;
 int TX_TOTAL_SIZE ;
 int free_netdev (struct net_device*) ;
 int kfree (struct mii_phy*) ;
 struct sis900_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void sis900_remove(struct pci_dev *pci_dev)
{
 struct net_device *net_dev = pci_get_drvdata(pci_dev);
 struct sis900_private *sis_priv = netdev_priv(net_dev);

 unregister_netdev(net_dev);

 while (sis_priv->first_mii) {
  struct mii_phy *phy = sis_priv->first_mii;

  sis_priv->first_mii = phy->next;
  kfree(phy);
 }

 pci_free_consistent(pci_dev, RX_TOTAL_SIZE, sis_priv->rx_ring,
  sis_priv->rx_ring_dma);
 pci_free_consistent(pci_dev, TX_TOTAL_SIZE, sis_priv->tx_ring,
  sis_priv->tx_ring_dma);
 pci_iounmap(pci_dev, sis_priv->ioaddr);
 free_netdev(net_dev);
 pci_release_regions(pci_dev);
}
