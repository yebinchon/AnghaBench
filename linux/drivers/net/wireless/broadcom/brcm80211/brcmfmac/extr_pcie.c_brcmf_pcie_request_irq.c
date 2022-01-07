
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; int dev; } ;
struct brcmf_pciedev_info {int irq_allocated; struct pci_dev* pdev; } ;
struct brcmf_bus {int dummy; } ;


 int EIO ;
 int IRQF_SHARED ;
 int PCIE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (struct brcmf_bus*,char*,int ) ;
 int brcmf_pcie_intr_disable (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_isr_thread ;
 int brcmf_pcie_quick_check_isr ;
 struct brcmf_bus* dev_get_drvdata (int *) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 scalar_t__ request_threaded_irq (int ,int ,int ,int ,char*,struct brcmf_pciedev_info*) ;

__attribute__((used)) static int brcmf_pcie_request_irq(struct brcmf_pciedev_info *devinfo)
{
 struct pci_dev *pdev = devinfo->pdev;
 struct brcmf_bus *bus = dev_get_drvdata(&pdev->dev);

 brcmf_pcie_intr_disable(devinfo);

 brcmf_dbg(PCIE, "Enter\n");

 pci_enable_msi(pdev);
 if (request_threaded_irq(pdev->irq, brcmf_pcie_quick_check_isr,
     brcmf_pcie_isr_thread, IRQF_SHARED,
     "brcmf_pcie_intr", devinfo)) {
  pci_disable_msi(pdev);
  brcmf_err(bus, "Failed to request IRQ %d\n", pdev->irq);
  return -EIO;
 }
 devinfo->irq_allocated = 1;
 return 0;
}
