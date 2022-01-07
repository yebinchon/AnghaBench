
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int (* prepare_hs400_tuning ) (struct tmio_mmc_host*) ;} ;
struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;


 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int stub1 (struct tmio_mmc_host*) ;

__attribute__((used)) static int tmio_mmc_prepare_hs400_tuning(struct mmc_host *mmc,
      struct mmc_ios *ios)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);

 if (host->prepare_hs400_tuning)
  host->prepare_hs400_tuning(host);

 return 0;
}
