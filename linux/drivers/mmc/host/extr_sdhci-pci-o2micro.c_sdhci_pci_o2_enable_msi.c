
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_chip {int pdev; } ;
struct sdhci_host {int irq; int mmc; } ;


 int PCI_CAP_ID_MSI ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int mmc_hostname (int ) ;
 int pci_alloc_irq_vectors (int ,int,int,int) ;
 int pci_find_capability (int ,int ) ;
 int pci_irq_vector (int ,int ) ;
 int pr_err (char*,int ,int) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void sdhci_pci_o2_enable_msi(struct sdhci_pci_chip *chip,
        struct sdhci_host *host)
{
 int ret;

 ret = pci_find_capability(chip->pdev, PCI_CAP_ID_MSI);
 if (!ret) {
  pr_info("%s: unsupport msi, use INTx irq\n",
   mmc_hostname(host->mmc));
  return;
 }

 ret = pci_alloc_irq_vectors(chip->pdev, 1, 1,
        PCI_IRQ_MSI | PCI_IRQ_MSIX);
 if (ret < 0) {
  pr_err("%s: enable PCI MSI failed, err=%d\n",
         mmc_hostname(host->mmc), ret);
  return;
 }

 host->irq = pci_irq_vector(chip->pdev, 0);
}
