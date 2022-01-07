
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xircom_private {int rx_dma_handle; int rx_buffer; int tx_dma_handle; int tx_buffer; int ioaddr; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct net_device {int dummy; } ;


 int dma_free_coherent (struct device*,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct xircom_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void xircom_remove(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct xircom_private *card = netdev_priv(dev);
 struct device *d = &pdev->dev;

 unregister_netdev(dev);
 pci_iounmap(pdev, card->ioaddr);
 dma_free_coherent(d, 8192, card->tx_buffer, card->tx_dma_handle);
 dma_free_coherent(d, 8192, card->rx_buffer, card->rx_dma_handle);
 free_netdev(dev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
