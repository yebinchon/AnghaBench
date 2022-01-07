
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int AMD_AUTO_TUNE_SEL ;
 unsigned int AMD_BIT_MASK ;
 int AMD_SD_AUTO_PATTERN ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,unsigned int) ;

__attribute__((used)) static void amd_config_tuning_phase(struct pci_dev *pdev, u8 phase)
{
 unsigned int val;

 pci_read_config_dword(pdev, AMD_SD_AUTO_PATTERN, &val);
 val &= ~AMD_BIT_MASK;
 val |= (AMD_AUTO_TUNE_SEL | (phase << 1));
 pci_write_config_dword(pdev, AMD_SD_AUTO_PATTERN, val);
}
