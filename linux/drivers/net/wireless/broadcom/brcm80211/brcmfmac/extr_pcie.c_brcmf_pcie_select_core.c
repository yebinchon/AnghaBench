
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct brcmf_pciedev_info {int ci; struct pci_dev* pdev; } ;
struct brcmf_core {scalar_t__ base; } ;
struct brcmf_bus {int dummy; } ;


 int BRCMF_PCIE_BAR0_WINDOW ;
 struct brcmf_core* brcmf_chip_get_core (int ,int ) ;
 int brcmf_err (struct brcmf_bus*,char*,int ) ;
 struct brcmf_bus* dev_get_drvdata (int *) ;
 scalar_t__ pci_read_config_dword (struct pci_dev const*,int ,scalar_t__*) ;
 int pci_write_config_dword (struct pci_dev const*,int ,scalar_t__) ;

__attribute__((used)) static void
brcmf_pcie_select_core(struct brcmf_pciedev_info *devinfo, u16 coreid)
{
 const struct pci_dev *pdev = devinfo->pdev;
 struct brcmf_bus *bus = dev_get_drvdata(&pdev->dev);
 struct brcmf_core *core;
 u32 bar0_win;

 core = brcmf_chip_get_core(devinfo->ci, coreid);
 if (core) {
  bar0_win = core->base;
  pci_write_config_dword(pdev, BRCMF_PCIE_BAR0_WINDOW, bar0_win);
  if (pci_read_config_dword(pdev, BRCMF_PCIE_BAR0_WINDOW,
       &bar0_win) == 0) {
   if (bar0_win != core->base) {
    bar0_win = core->base;
    pci_write_config_dword(pdev,
             BRCMF_PCIE_BAR0_WINDOW,
             bar0_win);
   }
  }
 } else {
  brcmf_err(bus, "Unsupported core selected %x\n", coreid);
 }
}
