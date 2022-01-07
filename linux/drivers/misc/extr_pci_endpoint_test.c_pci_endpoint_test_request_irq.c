
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {int num_irqs; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int DRV_MODULE_NAME ;
 int IRQF_SHARED ;



 int dev_err (struct device*,char*,int ,...) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct pci_endpoint_test*) ;
 int irq_type ;
 int pci_endpoint_test_irqhandler ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static bool pci_endpoint_test_request_irq(struct pci_endpoint_test *test)
{
 int i;
 int err;
 struct pci_dev *pdev = test->pdev;
 struct device *dev = &pdev->dev;

 for (i = 0; i < test->num_irqs; i++) {
  err = devm_request_irq(dev, pci_irq_vector(pdev, i),
           pci_endpoint_test_irqhandler,
           IRQF_SHARED, DRV_MODULE_NAME, test);
  if (err)
   goto fail;
 }

 return 1;

fail:
 switch (irq_type) {
 case 130:
  dev_err(dev, "Failed to request IRQ %d for Legacy\n",
   pci_irq_vector(pdev, i));
  break;
 case 129:
  dev_err(dev, "Failed to request IRQ %d for MSI %d\n",
   pci_irq_vector(pdev, i),
   i + 1);
  break;
 case 128:
  dev_err(dev, "Failed to request IRQ %d for MSI-X %d\n",
   pci_irq_vector(pdev, i),
   i + 1);
  break;
 }

 return 0;
}
