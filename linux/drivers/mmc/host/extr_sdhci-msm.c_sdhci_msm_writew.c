
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 scalar_t__ __sdhci_msm_check_write (struct sdhci_host*,int ,int) ;
 int sdhci_msm_check_power_status (struct sdhci_host*,scalar_t__) ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_msm_writew(struct sdhci_host *host, u16 val, int reg)
{
 u32 req_type = 0;

 req_type = __sdhci_msm_check_write(host, val, reg);
 writew_relaxed(val, host->ioaddr + reg);

 if (req_type)
  sdhci_msm_check_power_status(host, req_type);
}
