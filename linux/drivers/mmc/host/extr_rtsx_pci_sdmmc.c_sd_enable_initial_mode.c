
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int pcr; } ;


 int SD_CFG1 ;
 int SD_CLK_DIVIDE_128 ;
 int SD_CLK_DIVIDE_MASK ;
 int rtsx_pci_write_register (int ,int ,int ,int ) ;

__attribute__((used)) static inline void sd_enable_initial_mode(struct realtek_pci_sdmmc *host)
{
 rtsx_pci_write_register(host->pcr, SD_CFG1,
   SD_CLK_DIVIDE_MASK, SD_CLK_DIVIDE_128);
}
