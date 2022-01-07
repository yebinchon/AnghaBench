
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pci_chip {int pdev; } ;


 int O2_SD_FREG0_LEDOFF ;
 int O2_SD_FUNC_REG0 ;
 int O2_SD_LED_ENABLE ;
 int O2_SD_TEST_REG ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void o2_pci_led_enable(struct sdhci_pci_chip *chip)
{
 int ret;
 u32 scratch_32;


 ret = pci_read_config_dword(chip->pdev,
        O2_SD_FUNC_REG0, &scratch_32);
 if (ret)
  return;

 scratch_32 &= ~O2_SD_FREG0_LEDOFF;
 pci_write_config_dword(chip->pdev,
          O2_SD_FUNC_REG0, scratch_32);

 ret = pci_read_config_dword(chip->pdev,
        O2_SD_TEST_REG, &scratch_32);
 if (ret)
  return;

 scratch_32 |= O2_SD_LED_ENABLE;
 pci_write_config_dword(chip->pdev,
          O2_SD_TEST_REG, scratch_32);

}
