
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int dummy; } ;
struct pci_dev {int dummy; } ;


 int enetc_phc_index ;
 int kfree (struct ptp_qoriq*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct ptp_qoriq* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int ptp_qoriq_free (struct ptp_qoriq*) ;

__attribute__((used)) static void enetc_ptp_remove(struct pci_dev *pdev)
{
 struct ptp_qoriq *ptp_qoriq = pci_get_drvdata(pdev);

 enetc_phc_index = -1;
 ptp_qoriq_free(ptp_qoriq);
 pci_free_irq_vectors(pdev);
 kfree(ptp_qoriq);

 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
