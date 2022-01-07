
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int irq; int card_detect_work; } ;
struct pci_dev {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct r852_device* pci_get_drvdata (struct pci_dev*) ;
 int r852_disable_irqs (struct r852_device*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void r852_shutdown(struct pci_dev *pci_dev)
{
 struct r852_device *dev = pci_get_drvdata(pci_dev);

 cancel_delayed_work_sync(&dev->card_detect_work);
 r852_disable_irqs(dev);
 synchronize_irq(dev->irq);
 pci_disable_device(pci_dev);
}
