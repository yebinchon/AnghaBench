
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int irq; int dev; } ;
struct brcmf_pciedev_info {int irq_allocated; scalar_t__ in_irq; struct pci_dev* pdev; } ;
struct brcmf_bus {int dummy; } ;


 int BRCMF_PCIE_PCIE2REG_MAILBOXINT ;
 int brcmf_err (struct brcmf_bus*,char*) ;
 int brcmf_pcie_intr_disable (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;
 struct brcmf_bus* dev_get_drvdata (int *) ;
 int free_irq (int ,struct brcmf_pciedev_info*) ;
 int msleep (int) ;
 int pci_disable_msi (struct pci_dev*) ;

__attribute__((used)) static void brcmf_pcie_release_irq(struct brcmf_pciedev_info *devinfo)
{
 struct pci_dev *pdev = devinfo->pdev;
 struct brcmf_bus *bus = dev_get_drvdata(&pdev->dev);
 u32 status;
 u32 count;

 if (!devinfo->irq_allocated)
  return;

 brcmf_pcie_intr_disable(devinfo);
 free_irq(pdev->irq, devinfo);
 pci_disable_msi(pdev);

 msleep(50);
 count = 0;
 while ((devinfo->in_irq) && (count < 20)) {
  msleep(50);
  count++;
 }
 if (devinfo->in_irq)
  brcmf_err(bus, "Still in IRQ (processing) !!!\n");

 status = brcmf_pcie_read_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
 brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT, status);

 devinfo->irq_allocated = 0;
}
