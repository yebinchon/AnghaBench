
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_endpoint_test {int last_irq; int irq_raised; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PCI_ENDPOINT_TEST_STATUS ;
 int STATUS_IRQ_RAISED ;
 int complete (int *) ;
 int pci_endpoint_test_readl (struct pci_endpoint_test*,int ) ;
 int pci_endpoint_test_writel (struct pci_endpoint_test*,int ,int) ;

__attribute__((used)) static irqreturn_t pci_endpoint_test_irqhandler(int irq, void *dev_id)
{
 struct pci_endpoint_test *test = dev_id;
 u32 reg;

 reg = pci_endpoint_test_readl(test, PCI_ENDPOINT_TEST_STATUS);
 if (reg & STATUS_IRQ_RAISED) {
  test->last_irq = irq;
  complete(&test->irq_raised);
  reg &= ~STATUS_IRQ_RAISED;
 }
 pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_STATUS,
     reg);

 return IRQ_HANDLED;
}
