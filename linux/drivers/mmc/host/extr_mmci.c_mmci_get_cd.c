
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_platform_data {unsigned int (* status ) (int ) ;} ;
struct mmci_host {int mmc; struct mmci_platform_data* plat; } ;
struct mmc_host {int dummy; } ;


 unsigned int ENOSYS ;
 int mmc_dev (int ) ;
 unsigned int mmc_gpio_get_cd (struct mmc_host*) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static int mmci_get_cd(struct mmc_host *mmc)
{
 struct mmci_host *host = mmc_priv(mmc);
 struct mmci_platform_data *plat = host->plat;
 unsigned int status = mmc_gpio_get_cd(mmc);

 if (status == -ENOSYS) {
  if (!plat->status)
   return 1;

  status = plat->status(mmc_dev(host->mmc));
 }
 return status;
}
