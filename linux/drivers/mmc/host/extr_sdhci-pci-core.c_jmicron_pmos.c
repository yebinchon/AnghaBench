
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_pci_chip {int pdev; } ;


 int pci_read_config_byte (int ,int,int*) ;
 int pci_write_config_byte (int ,int,int) ;

__attribute__((used)) static int jmicron_pmos(struct sdhci_pci_chip *chip, int on)
{
 u8 scratch;
 int ret;

 ret = pci_read_config_byte(chip->pdev, 0xAE, &scratch);
 if (ret)
  return ret;





 if (on)
  scratch |= 0x47;
 else
  scratch &= ~0x47;

 return pci_write_config_byte(chip->pdev, 0xAE, scratch);
}
