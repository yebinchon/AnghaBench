
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int IRQ_TYPE_LEGACY ;
 int IRQ_TYPE_MSIX ;
 int IRQ_TYPE_UNDEFINED ;
 int dev_err (struct device*,char*) ;
 int irq_type ;
 int pci_endpoint_test_alloc_irq_vectors (struct pci_endpoint_test*,int) ;
 int pci_endpoint_test_free_irq_vectors (struct pci_endpoint_test*) ;
 int pci_endpoint_test_release_irq (struct pci_endpoint_test*) ;
 int pci_endpoint_test_request_irq (struct pci_endpoint_test*) ;

__attribute__((used)) static bool pci_endpoint_test_set_irq(struct pci_endpoint_test *test,
          int req_irq_type)
{
 struct pci_dev *pdev = test->pdev;
 struct device *dev = &pdev->dev;

 if (req_irq_type < IRQ_TYPE_LEGACY || req_irq_type > IRQ_TYPE_MSIX) {
  dev_err(dev, "Invalid IRQ type option\n");
  return 0;
 }

 if (irq_type == req_irq_type)
  return 1;

 pci_endpoint_test_release_irq(test);
 pci_endpoint_test_free_irq_vectors(test);

 if (!pci_endpoint_test_alloc_irq_vectors(test, req_irq_type))
  goto err;

 if (!pci_endpoint_test_request_irq(test))
  goto err;

 irq_type = req_irq_type;
 return 1;

err:
 pci_endpoint_test_free_irq_vectors(test);
 irq_type = IRQ_TYPE_UNDEFINED;
 return 0;
}
