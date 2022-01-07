
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct kvaser_pciefd {scalar_t__ reg_base; TYPE_1__* pci; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ KVASER_PCIEFD_IEN_REG ;
 int KVASER_PCIEFD_IRQ_ALL_MSK ;
 scalar_t__ KVASER_PCIEFD_IRQ_REG ;
 scalar_t__ KVASER_PCIEFD_SRB_CTRL_REG ;
 int free_irq (int ,struct kvaser_pciefd*) ;
 int iowrite32 (int ,scalar_t__) ;
 int kvaser_pciefd_remove_all_ctrls (struct kvaser_pciefd*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct kvaser_pciefd* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void kvaser_pciefd_remove(struct pci_dev *pdev)
{
 struct kvaser_pciefd *pcie = pci_get_drvdata(pdev);

 kvaser_pciefd_remove_all_ctrls(pcie);


 iowrite32(0, pcie->reg_base + KVASER_PCIEFD_SRB_CTRL_REG);
 iowrite32(KVASER_PCIEFD_IRQ_ALL_MSK,
    pcie->reg_base + KVASER_PCIEFD_IRQ_REG);
 iowrite32(0, pcie->reg_base + KVASER_PCIEFD_IEN_REG);

 free_irq(pcie->pci->irq, pcie);

 pci_clear_master(pdev);
 pci_iounmap(pdev, pcie->reg_base);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
