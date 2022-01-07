
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ need_retune; scalar_t__ retune_now; int retune_timer; scalar_t__ can_retune; } ;


 int del_timer_sync (int *) ;
 int mmc_retune_unpause (struct mmc_host*) ;

void mmc_retune_disable(struct mmc_host *host)
{
 mmc_retune_unpause(host);
 host->can_retune = 0;
 del_timer_sync(&host->retune_timer);
 host->retune_now = 0;
 host->need_retune = 0;
}
