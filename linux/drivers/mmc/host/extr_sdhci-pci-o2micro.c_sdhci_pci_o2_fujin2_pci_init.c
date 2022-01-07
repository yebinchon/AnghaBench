
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pci_chip {int pdev; } ;


 int O2_SD_CAPS ;
 int O2_SD_CAP_REG0 ;
 int O2_SD_DELAY_CTRL ;
 int O2_SD_DEV_CTRL ;
 int O2_SD_FUNC_REG3 ;
 int O2_SD_LD0_CTRL ;
 int O2_SD_MISC_CTRL4 ;
 int O2_SD_MISC_REG5 ;
 int O2_SD_TEST_REG ;
 int O2_SD_TUNING_CTRL ;
 int O2_SD_UHS2_L1_CTRL ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void sdhci_pci_o2_fujin2_pci_init(struct sdhci_pci_chip *chip)
{
 u32 scratch_32;
 int ret;

 ret = pci_read_config_dword(chip->pdev, O2_SD_DEV_CTRL, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~((1 << 12) | (1 << 13) | (1 << 14));
 pci_write_config_dword(chip->pdev, O2_SD_DEV_CTRL, scratch_32);


 ret = pci_read_config_dword(chip->pdev, O2_SD_MISC_REG5, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~((1 << 19) | (1 << 11));
 scratch_32 |= (1 << 10);
 pci_write_config_dword(chip->pdev, O2_SD_MISC_REG5, scratch_32);


 ret = pci_read_config_dword(chip->pdev, O2_SD_TEST_REG, &scratch_32);
 if (ret)
  return;
 scratch_32 |= (1 << 4);
 pci_write_config_dword(chip->pdev, O2_SD_TEST_REG, scratch_32);


 pci_write_config_dword(chip->pdev, O2_SD_DELAY_CTRL, 0x00002492);


 ret = pci_read_config_dword(chip->pdev, O2_SD_LD0_CTRL, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(3 << 12);
 pci_write_config_dword(chip->pdev, O2_SD_LD0_CTRL, scratch_32);


 ret = pci_read_config_dword(chip->pdev, O2_SD_CAP_REG0, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(0x01FE);
 scratch_32 |= 0x00CC;
 pci_write_config_dword(chip->pdev, O2_SD_CAP_REG0, scratch_32);

 ret = pci_read_config_dword(chip->pdev,
        O2_SD_TUNING_CTRL, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(0x000000FF);
 scratch_32 |= 0x00000066;
 pci_write_config_dword(chip->pdev, O2_SD_TUNING_CTRL, scratch_32);


 ret = pci_read_config_dword(chip->pdev,
        O2_SD_UHS2_L1_CTRL, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(0x000000FC);
 scratch_32 |= 0x00000084;
 pci_write_config_dword(chip->pdev, O2_SD_UHS2_L1_CTRL, scratch_32);


 ret = pci_read_config_dword(chip->pdev, O2_SD_FUNC_REG3, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~((1 << 21) | (1 << 30));

 pci_write_config_dword(chip->pdev, O2_SD_FUNC_REG3, scratch_32);


 ret = pci_read_config_dword(chip->pdev, O2_SD_CAPS, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(0xf0000000);
 scratch_32 |= 0x30000000;
 pci_write_config_dword(chip->pdev, O2_SD_CAPS, scratch_32);

 ret = pci_read_config_dword(chip->pdev,
        O2_SD_MISC_CTRL4, &scratch_32);
 if (ret)
  return;
 scratch_32 &= ~(0x000f0000);
 scratch_32 |= 0x00080000;
 pci_write_config_dword(chip->pdev, O2_SD_MISC_CTRL4, scratch_32);
}
