
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_can_priv {int ndev; int regs; int dev; scalar_t__ use_msi; } ;
struct net_device {int dummy; } ;


 int free_candev (int ) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int pch_can_reset (struct pch_can_priv*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_candev (int ) ;

__attribute__((used)) static void pch_can_remove(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct pch_can_priv *priv = netdev_priv(ndev);

 unregister_candev(priv->ndev);
 if (priv->use_msi)
  pci_disable_msi(priv->dev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pch_can_reset(priv);
 pci_iounmap(pdev, priv->regs);
 free_candev(priv->ndev);
}
