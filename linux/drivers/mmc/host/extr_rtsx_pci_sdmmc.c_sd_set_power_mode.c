
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int dummy; } ;


 unsigned char MMC_POWER_OFF ;
 int sd_power_off (struct realtek_pci_sdmmc*) ;
 int sd_power_on (struct realtek_pci_sdmmc*) ;

__attribute__((used)) static int sd_set_power_mode(struct realtek_pci_sdmmc *host,
  unsigned char power_mode)
{
 int err;

 if (power_mode == MMC_POWER_OFF)
  err = sd_power_off(host);
 else
  err = sd_power_on(host);

 return err;
}
