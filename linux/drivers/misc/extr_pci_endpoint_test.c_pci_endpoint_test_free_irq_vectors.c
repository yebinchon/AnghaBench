
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_endpoint_test {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static void pci_endpoint_test_free_irq_vectors(struct pci_endpoint_test *test)
{
 struct pci_dev *pdev = test->pdev;

 pci_free_irq_vectors(pdev);
}
