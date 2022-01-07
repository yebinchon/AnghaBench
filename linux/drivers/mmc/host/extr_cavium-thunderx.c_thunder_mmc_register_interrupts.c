
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cvm_mmc_host {int dummy; } ;


 int PCI_IRQ_MSIX ;
 int cvm_mmc_interrupt ;
 int * cvm_mmc_irq_names ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct cvm_mmc_host*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static int thunder_mmc_register_interrupts(struct cvm_mmc_host *host,
        struct pci_dev *pdev)
{
 int nvec, ret, i;

 nvec = pci_alloc_irq_vectors(pdev, 1, 9, PCI_IRQ_MSIX);
 if (nvec < 0)
  return nvec;


 for (i = 0; i < nvec; i++) {
  ret = devm_request_irq(&pdev->dev, pci_irq_vector(pdev, i),
           cvm_mmc_interrupt,
           0, cvm_mmc_irq_names[i], host);
  if (ret)
   return ret;
 }
 return 0;
}
