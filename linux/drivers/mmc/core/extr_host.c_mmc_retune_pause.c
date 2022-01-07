
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int retune_paused; } ;


 int mmc_retune_hold (struct mmc_host*) ;
 int mmc_retune_needed (struct mmc_host*) ;

void mmc_retune_pause(struct mmc_host *host)
{
 if (!host->retune_paused) {
  host->retune_paused = 1;
  mmc_retune_needed(host);
  mmc_retune_hold(host);
 }
}
