
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int BRCMF_PCIE_BAR0_REG_SIZE ;
 int BRCMF_PCIE_BAR0_WINDOW ;
 int pci_write_config_dword (struct pci_dev const*,int ,int) ;

__attribute__((used)) static u32 brcmf_pcie_buscore_prep_addr(const struct pci_dev *pdev, u32 addr)
{
 u32 ret_addr;

 ret_addr = addr & (BRCMF_PCIE_BAR0_REG_SIZE - 1);
 addr &= ~(BRCMF_PCIE_BAR0_REG_SIZE - 1);
 pci_write_config_dword(pdev, BRCMF_PCIE_BAR0_WINDOW, addr);

 return ret_addr;
}
