
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; int dev; } ;
struct mei_device {int dummy; } ;


 int dev_err (int *,char*) ;
 int free_irq (int ,struct mei_device*) ;
 int mei_deregister (struct mei_device*) ;
 int mei_disable_interrupts (struct mei_device*) ;
 int mei_stop (struct mei_device*) ;
 int mei_txe_unset_pm_domain (struct mei_device*) ;
 struct mei_device* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void mei_txe_remove(struct pci_dev *pdev)
{
 struct mei_device *dev;

 dev = pci_get_drvdata(pdev);
 if (!dev) {
  dev_err(&pdev->dev, "mei: dev == NULL\n");
  return;
 }

 pm_runtime_get_noresume(&pdev->dev);

 mei_stop(dev);

 mei_txe_unset_pm_domain(dev);

 mei_disable_interrupts(dev);
 free_irq(pdev->irq, dev);

 mei_deregister(dev);
}
