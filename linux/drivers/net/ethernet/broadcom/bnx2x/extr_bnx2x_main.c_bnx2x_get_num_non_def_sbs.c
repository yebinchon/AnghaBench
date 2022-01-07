
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ msix_cap; int dev; } ;


 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_QSIZE ;
 int dev_info (int *,char*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int bnx2x_get_num_non_def_sbs(struct pci_dev *pdev, int cnic_cnt)
{
 int index;
 u16 control = 0;





 if (!pdev->msix_cap) {
  dev_info(&pdev->dev, "no msix capability found\n");
  return 1 + cnic_cnt;
 }
 dev_info(&pdev->dev, "msix capability found\n");
 pci_read_config_word(pdev, pdev->msix_cap + PCI_MSIX_FLAGS, &control);

 index = control & PCI_MSIX_FLAGS_QSIZE;

 return index;
}
