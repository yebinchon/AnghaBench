
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;


 int PCI_CFG_HFS_2 ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int trace_mei_pci_cfg_read (int *,char*,int ,int) ;

__attribute__((used)) static bool mei_me_fw_type_nm(struct pci_dev *pdev)
{
 u32 reg;

 pci_read_config_dword(pdev, PCI_CFG_HFS_2, &reg);
 trace_mei_pci_cfg_read(&pdev->dev, "PCI_CFG_HFS_2", PCI_CFG_HFS_2, reg);

 return (reg & 0x600) == 0x200;
}
