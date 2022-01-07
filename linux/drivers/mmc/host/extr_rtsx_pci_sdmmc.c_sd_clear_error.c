
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int pcr; } ;


 int CARD_STOP ;
 int SD_CLR_ERR ;
 int SD_STOP ;
 int rtsx_pci_write_register (int ,int ,int,int) ;

__attribute__((used)) static inline void sd_clear_error(struct realtek_pci_sdmmc *host)
{
 rtsx_pci_write_register(host->pcr, CARD_STOP,
   SD_STOP | SD_CLR_ERR, SD_STOP | SD_CLR_ERR);
}
