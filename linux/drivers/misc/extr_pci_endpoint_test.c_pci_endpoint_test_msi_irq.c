
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_endpoint_test {scalar_t__ last_irq; int irq_raised; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ COMMAND_RAISE_MSIX_IRQ ;
 scalar_t__ COMMAND_RAISE_MSI_IRQ ;
 scalar_t__ IRQ_TYPE_MSI ;
 scalar_t__ IRQ_TYPE_MSIX ;
 int PCI_ENDPOINT_TEST_COMMAND ;
 int PCI_ENDPOINT_TEST_IRQ_NUMBER ;
 int PCI_ENDPOINT_TEST_IRQ_TYPE ;
 int msecs_to_jiffies (int) ;
 int pci_endpoint_test_writel (struct pci_endpoint_test*,int ,scalar_t__) ;
 scalar_t__ pci_irq_vector (struct pci_dev*,scalar_t__) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static bool pci_endpoint_test_msi_irq(struct pci_endpoint_test *test,
           u16 msi_num, bool msix)
{
 u32 val;
 struct pci_dev *pdev = test->pdev;

 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_TYPE,
     msix == 0 ? IRQ_TYPE_MSI :
     IRQ_TYPE_MSIX);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, msi_num);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_COMMAND,
     msix == 0 ? COMMAND_RAISE_MSI_IRQ :
     COMMAND_RAISE_MSIX_IRQ);
 val = wait_for_completion_timeout(&test->irq_raised,
       msecs_to_jiffies(1000));
 if (!val)
  return 0;

 if (pci_irq_vector(pdev, msi_num - 1) == test->last_irq)
  return 1;

 return 0;
}
