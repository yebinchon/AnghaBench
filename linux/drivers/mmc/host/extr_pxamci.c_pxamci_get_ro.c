
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxamci_host {TYPE_1__* pdata; scalar_t__ use_ro_gpio; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* get_ro ) (int ) ;} ;


 int ENOSYS ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_gpio_get_ro (struct mmc_host*) ;
 struct pxamci_host* mmc_priv (struct mmc_host*) ;
 int stub1 (int ) ;

__attribute__((used)) static int pxamci_get_ro(struct mmc_host *mmc)
{
 struct pxamci_host *host = mmc_priv(mmc);

 if (host->use_ro_gpio)
  return mmc_gpio_get_ro(mmc);
 if (host->pdata && host->pdata->get_ro)
  return !!host->pdata->get_ro(mmc_dev(mmc));




 return -ENOSYS;
}
