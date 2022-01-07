
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_endpoint_test {int irq_raised; } ;


 int COMMAND_RAISE_LEGACY_IRQ ;
 int IRQ_TYPE_LEGACY ;
 int PCI_ENDPOINT_TEST_COMMAND ;
 int PCI_ENDPOINT_TEST_IRQ_NUMBER ;
 int PCI_ENDPOINT_TEST_IRQ_TYPE ;
 int msecs_to_jiffies (int) ;
 int pci_endpoint_test_writel (struct pci_endpoint_test*,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static bool pci_endpoint_test_legacy_irq(struct pci_endpoint_test *test)
{
 u32 val;

 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_TYPE,
     IRQ_TYPE_LEGACY);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 0);
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_COMMAND,
     COMMAND_RAISE_LEGACY_IRQ);
 val = wait_for_completion_timeout(&test->irq_raised,
       msecs_to_jiffies(1000));
 if (!val)
  return 0;

 return 1;
}
