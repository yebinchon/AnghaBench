
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; } ;


 int MMC_CAP_CMD23 ;

__attribute__((used)) static inline int mmc_host_cmd23(struct mmc_host *host)
{
 return host->caps & MMC_CAP_CMD23;
}
