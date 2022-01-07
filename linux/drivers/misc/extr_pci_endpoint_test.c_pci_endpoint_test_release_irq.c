
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {int num_irqs; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int devm_free_irq (struct device*,int ,struct pci_endpoint_test*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void pci_endpoint_test_release_irq(struct pci_endpoint_test *test)
{
 int i;
 struct pci_dev *pdev = test->pdev;
 struct device *dev = &pdev->dev;

 for (i = 0; i < test->num_irqs; i++)
  devm_free_irq(dev, pci_irq_vector(pdev, i), test);

 test->num_irqs = 0;
}
