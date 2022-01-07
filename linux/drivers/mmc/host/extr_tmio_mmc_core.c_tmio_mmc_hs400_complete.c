
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int (* hs400_complete ) (struct tmio_mmc_host*) ;} ;
struct mmc_host {int dummy; } ;


 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int stub1 (struct tmio_mmc_host*) ;

__attribute__((used)) static void tmio_mmc_hs400_complete(struct mmc_host *mmc)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);

 if (host->hs400_complete)
  host->hs400_complete(host);
}
