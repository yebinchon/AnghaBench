
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timing; } ;
struct mmc_host {int doing_retune; int card; TYPE_1__ ios; scalar_t__ need_retune; scalar_t__ retune_now; } ;


 scalar_t__ MMC_TIMING_MMC_HS400 ;
 int mmc_execute_tuning (int ) ;
 int mmc_hs200_to_hs400 (int ) ;
 int mmc_hs400_to_hs200 (int ) ;

int mmc_retune(struct mmc_host *host)
{
 bool return_to_hs400 = 0;
 int err;

 if (host->retune_now)
  host->retune_now = 0;
 else
  return 0;

 if (!host->need_retune || host->doing_retune || !host->card)
  return 0;

 host->need_retune = 0;

 host->doing_retune = 1;

 if (host->ios.timing == MMC_TIMING_MMC_HS400) {
  err = mmc_hs400_to_hs200(host->card);
  if (err)
   goto out;

  return_to_hs400 = 1;
 }

 err = mmc_execute_tuning(host->card);
 if (err)
  goto out;

 if (return_to_hs400)
  err = mmc_hs200_to_hs400(host->card);
out:
 host->doing_retune = 0;

 return err;
}
