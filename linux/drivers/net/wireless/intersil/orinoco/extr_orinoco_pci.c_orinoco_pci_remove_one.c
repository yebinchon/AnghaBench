
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_2__ {int iobase; } ;
struct orinoco_private {TYPE_1__ hw; } ;


 int free_irq (int ,struct orinoco_private*) ;
 int free_orinocodev (struct orinoco_private*) ;
 int orinoco_if_del (struct orinoco_private*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct orinoco_private* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int priv_to_wiphy (struct orinoco_private*) ;
 int wiphy_unregister (int ) ;

__attribute__((used)) static void orinoco_pci_remove_one(struct pci_dev *pdev)
{
 struct orinoco_private *priv = pci_get_drvdata(pdev);

 orinoco_if_del(priv);
 wiphy_unregister(priv_to_wiphy(priv));
 free_irq(pdev->irq, priv);
 free_orinocodev(priv);
 pci_iounmap(pdev, priv->hw.iobase);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
