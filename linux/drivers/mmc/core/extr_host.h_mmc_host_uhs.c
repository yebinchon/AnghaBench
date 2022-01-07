
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; } ;


 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;

__attribute__((used)) static inline int mmc_host_uhs(struct mmc_host *host)
{
 return host->caps &
  (MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 |
   MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104 |
   MMC_CAP_UHS_DDR50) &&
        host->caps & MMC_CAP_4_BIT_DATA;
}
