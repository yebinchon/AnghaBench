
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlan_priv {int tlan_tqueue; int dma_storage_dma; scalar_t__ dma_storage; int dma_size; int pci_dev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void tlan_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct tlan_priv *priv = netdev_priv(dev);

 unregister_netdev(dev);

 if (priv->dma_storage) {
  pci_free_consistent(priv->pci_dev,
        priv->dma_size, priv->dma_storage,
        priv->dma_storage_dma);
 }





 free_netdev(dev);

 cancel_work_sync(&priv->tlan_tqueue);
}
