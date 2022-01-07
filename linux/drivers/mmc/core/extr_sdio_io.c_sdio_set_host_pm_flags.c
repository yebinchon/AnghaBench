
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; } ;
struct mmc_host {int pm_caps; int pm_flags; } ;
typedef int mmc_pm_flag_t ;
struct TYPE_2__ {struct mmc_host* host; } ;


 int EINVAL ;

int sdio_set_host_pm_flags(struct sdio_func *func, mmc_pm_flag_t flags)
{
 struct mmc_host *host;

 if (!func)
  return -EINVAL;

 host = func->card->host;

 if (flags & ~host->pm_caps)
  return -EINVAL;


 host->pm_flags |= flags;
 return 0;
}
