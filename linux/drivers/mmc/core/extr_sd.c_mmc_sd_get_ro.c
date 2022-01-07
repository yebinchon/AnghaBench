
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps2; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ro ) (struct mmc_host*) ;} ;


 int MMC_CAP2_NO_WRITE_PROTECT ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static int mmc_sd_get_ro(struct mmc_host *host)
{
 int ro;






 if (host->caps2 & MMC_CAP2_NO_WRITE_PROTECT)
  return 0;

 if (!host->ops->get_ro)
  return -1;

 ro = host->ops->get_ro(host);

 return ro;
}
