
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct msix_entry {unsigned int entry; } ;


 int dev_err (int *,char*,unsigned int,unsigned int,int) ;
 int dev_warn (int *,char*,unsigned int,int) ;
 int pci_enable_msix_range (struct pci_dev*,struct msix_entry*,unsigned int,unsigned int) ;

unsigned int
nfp_net_irqs_alloc(struct pci_dev *pdev, struct msix_entry *irq_entries,
     unsigned int min_irqs, unsigned int wanted_irqs)
{
 unsigned int i;
 int got_irqs;

 for (i = 0; i < wanted_irqs; i++)
  irq_entries[i].entry = i;

 got_irqs = pci_enable_msix_range(pdev, irq_entries,
      min_irqs, wanted_irqs);
 if (got_irqs < 0) {
  dev_err(&pdev->dev, "Failed to enable %d-%d MSI-X (err=%d)\n",
   min_irqs, wanted_irqs, got_irqs);
  return 0;
 }

 if (got_irqs < wanted_irqs)
  dev_warn(&pdev->dev, "Unable to allocate %d IRQs got only %d\n",
    wanted_irqs, got_irqs);

 return got_irqs;
}
