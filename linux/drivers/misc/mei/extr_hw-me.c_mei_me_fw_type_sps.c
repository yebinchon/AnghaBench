
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; int bus; int devfn; } ;


 int PCI_CFG_HFS_1 ;
 unsigned int PCI_DEVFN (int ,int ) ;
 int PCI_SLOT (int ) ;
 int pci_bus_read_config_dword (int ,unsigned int,int ,int*) ;
 int trace_mei_pci_cfg_read (int *,char*,int ,int) ;

__attribute__((used)) static bool mei_me_fw_type_sps(struct pci_dev *pdev)
{
 u32 reg;
 unsigned int devfn;





 devfn = PCI_DEVFN(PCI_SLOT(pdev->devfn), 0);
 pci_bus_read_config_dword(pdev->bus, devfn, PCI_CFG_HFS_1, &reg);
 trace_mei_pci_cfg_read(&pdev->dev, "PCI_CFG_HFS_1", PCI_CFG_HFS_1, reg);

 return (reg & 0xf0000) == 0xf0000;
}
