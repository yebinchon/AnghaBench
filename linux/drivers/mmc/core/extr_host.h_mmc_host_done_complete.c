
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; } ;


 int MMC_CAP_DONE_COMPLETE ;

__attribute__((used)) static inline bool mmc_host_done_complete(struct mmc_host *host)
{
 return host->caps & MMC_CAP_DONE_COMPLETE;
}
