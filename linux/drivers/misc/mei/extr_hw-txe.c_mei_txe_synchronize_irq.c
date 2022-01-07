
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct mei_device {int dev; } ;


 int synchronize_irq (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void mei_txe_synchronize_irq(struct mei_device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 synchronize_irq(pdev->irq);
}
