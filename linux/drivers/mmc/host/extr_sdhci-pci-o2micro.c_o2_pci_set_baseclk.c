
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pci_chip {int pdev; } ;


 int O2_SD_PLL_SETTING ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void o2_pci_set_baseclk(struct sdhci_pci_chip *chip, u32 value)
{
 u32 scratch_32;

 pci_read_config_dword(chip->pdev,
         O2_SD_PLL_SETTING, &scratch_32);

 scratch_32 &= 0x0000FFFF;
 scratch_32 |= value;

 pci_write_config_dword(chip->pdev,
          O2_SD_PLL_SETTING, scratch_32);
}
