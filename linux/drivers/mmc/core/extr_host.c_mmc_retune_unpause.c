
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ retune_paused; } ;


 int mmc_retune_release (struct mmc_host*) ;

void mmc_retune_unpause(struct mmc_host *host)
{
 if (host->retune_paused) {
  host->retune_paused = 0;
  mmc_retune_release(host);
 }
}
