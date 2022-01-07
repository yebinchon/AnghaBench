
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_hwif {void* cfg_regs_bar; void* intr_regs_base; struct pci_dev* pdev; } ;


 int ENOMEM ;
 scalar_t__ HINIC_IS_PF (struct hinic_hwif*) ;
 int HINIC_PCI_CFG_REGS_BAR ;
 int HINIC_PCI_INTR_REGS_BAR ;
 int dev_err (int *,char*) ;
 int dma_attr_init (struct hinic_hwif*) ;
 int hwif_ready (struct hinic_hwif*) ;
 int iounmap (void*) ;
 void* pci_ioremap_bar (struct pci_dev*,int ) ;
 int read_hwif_attr (struct hinic_hwif*) ;
 int set_ppf (struct hinic_hwif*) ;

int hinic_init_hwif(struct hinic_hwif *hwif, struct pci_dev *pdev)
{
 int err;

 hwif->pdev = pdev;

 hwif->cfg_regs_bar = pci_ioremap_bar(pdev, HINIC_PCI_CFG_REGS_BAR);
 if (!hwif->cfg_regs_bar) {
  dev_err(&pdev->dev, "Failed to map configuration regs\n");
  return -ENOMEM;
 }

 hwif->intr_regs_base = pci_ioremap_bar(pdev, HINIC_PCI_INTR_REGS_BAR);
 if (!hwif->intr_regs_base) {
  dev_err(&pdev->dev, "Failed to map configuration regs\n");
  err = -ENOMEM;
  goto err_map_intr_bar;
 }

 err = hwif_ready(hwif);
 if (err) {
  dev_err(&pdev->dev, "HW interface is not ready\n");
  goto err_hwif_ready;
 }

 read_hwif_attr(hwif);

 if (HINIC_IS_PF(hwif))
  set_ppf(hwif);


 dma_attr_init(hwif);
 return 0;

err_hwif_ready:
 iounmap(hwif->intr_regs_base);

err_map_intr_bar:
 iounmap(hwif->cfg_regs_bar);

 return err;
}
