
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int io_base; } ;
struct hclge_dev {TYPE_1__ hw; struct pci_dev* pdev; } ;


 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pcim_iounmap (struct pci_dev*,int ) ;

__attribute__((used)) static void hclge_pci_uninit(struct hclge_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;

 pcim_iounmap(pdev, hdev->hw.io_base);
 pci_free_irq_vectors(pdev);
 pci_clear_master(pdev);
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
