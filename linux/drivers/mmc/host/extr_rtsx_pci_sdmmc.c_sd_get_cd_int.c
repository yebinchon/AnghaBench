
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int pcr; } ;


 int RTSX_BIPR ;
 int SD_EXIST ;
 int rtsx_pci_readl (int ,int ) ;

__attribute__((used)) static inline int sd_get_cd_int(struct realtek_pci_sdmmc *host)
{
 return rtsx_pci_readl(host->pcr, RTSX_BIPR) & SD_EXIST;
}
