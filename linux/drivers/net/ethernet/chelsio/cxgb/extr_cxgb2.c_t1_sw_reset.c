
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int A_PCICFG_PM_CSR ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static inline void t1_sw_reset(struct pci_dev *pdev)
{
 pci_write_config_dword(pdev, A_PCICFG_PM_CSR, 3);
 pci_write_config_dword(pdev, A_PCICFG_PM_CSR, 0);
}
