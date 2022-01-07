
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phantom_device {scalar_t__ caddr; scalar_t__ iaddr; scalar_t__ oaddr; TYPE_1__ cdev; } ;
struct pci_dev {int irq; } ;


 unsigned int MINOR (int ) ;
 int MKDEV (int ,unsigned int) ;
 scalar_t__ PHN_IRQCTL ;
 int cdev_del (TYPE_1__*) ;
 int device_destroy (int ,int ) ;
 int free_irq (int ,struct phantom_device*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int kfree (struct phantom_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct phantom_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;
 int phantom_class ;
 scalar_t__* phantom_devices ;
 int phantom_major ;

__attribute__((used)) static void phantom_remove(struct pci_dev *pdev)
{
 struct phantom_device *pht = pci_get_drvdata(pdev);
 unsigned int minor = MINOR(pht->cdev.dev);

 device_destroy(phantom_class, MKDEV(phantom_major, minor));

 cdev_del(&pht->cdev);

 iowrite32(0, pht->caddr + PHN_IRQCTL);
 ioread32(pht->caddr + PHN_IRQCTL);
 free_irq(pdev->irq, pht);

 pci_iounmap(pdev, pht->oaddr);
 pci_iounmap(pdev, pht->iaddr);
 pci_iounmap(pdev, pht->caddr);

 kfree(pht);

 pci_release_regions(pdev);

 phantom_devices[minor] = 0;

 pci_disable_device(pdev);
}
