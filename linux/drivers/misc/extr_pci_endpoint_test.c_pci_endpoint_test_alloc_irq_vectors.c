
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {int num_irqs; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;





 int PCI_IRQ_LEGACY ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int dev_err (struct device*,char*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;

__attribute__((used)) static bool pci_endpoint_test_alloc_irq_vectors(struct pci_endpoint_test *test,
      int type)
{
 int irq = -1;
 struct pci_dev *pdev = test->pdev;
 struct device *dev = &pdev->dev;
 bool res = 1;

 switch (type) {
 case 130:
  irq = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_LEGACY);
  if (irq < 0)
   dev_err(dev, "Failed to get Legacy interrupt\n");
  break;
 case 129:
  irq = pci_alloc_irq_vectors(pdev, 1, 32, PCI_IRQ_MSI);
  if (irq < 0)
   dev_err(dev, "Failed to get MSI interrupts\n");
  break;
 case 128:
  irq = pci_alloc_irq_vectors(pdev, 1, 2048, PCI_IRQ_MSIX);
  if (irq < 0)
   dev_err(dev, "Failed to get MSI-X interrupts\n");
  break;
 default:
  dev_err(dev, "Invalid IRQ type selected\n");
 }

 if (irq < 0) {
  irq = 0;
  res = 0;
 }
 test->num_irqs = irq;

 return res;
}
