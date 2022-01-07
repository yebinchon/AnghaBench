
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usdhi6_host {int dummy; } ;
struct mmc_host {int caps2; } ;


 int MMC_CAP2_RO_ACTIVE_HIGH ;
 int USDHI6_SD_INFO1 ;
 int USDHI6_SD_INFO1_WP ;
 struct usdhi6_host* mmc_priv (struct mmc_host*) ;
 int usdhi6_read (struct usdhi6_host*,int ) ;

__attribute__((used)) static int usdhi6_get_ro(struct mmc_host *mmc)
{
 struct usdhi6_host *host = mmc_priv(mmc);

 u32 status = usdhi6_read(host, USDHI6_SD_INFO1) & USDHI6_SD_INFO1_WP;
 return !status ^ !(mmc->caps2 & MMC_CAP2_RO_ACTIVE_HIGH);
}
