
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {int pdev; scalar_t__ regs; scalar_t__ tcm; } ;


 int iounmap (scalar_t__) ;
 int pci_disable_device (int ) ;

__attribute__((used)) static void brcmf_pcie_release_resource(struct brcmf_pciedev_info *devinfo)
{
 if (devinfo->tcm)
  iounmap(devinfo->tcm);
 if (devinfo->regs)
  iounmap(devinfo->regs);

 pci_disable_device(devinfo->pdev);
}
