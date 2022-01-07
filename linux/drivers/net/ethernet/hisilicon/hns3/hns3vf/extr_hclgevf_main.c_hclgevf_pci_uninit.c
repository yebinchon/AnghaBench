
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int io_base; } ;
struct hclgevf_dev {TYPE_1__ hw; struct pci_dev* pdev; } ;


 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void hclgevf_pci_uninit(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;

 pci_iounmap(pdev, hdev->hw.io_base);
 pci_clear_master(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
