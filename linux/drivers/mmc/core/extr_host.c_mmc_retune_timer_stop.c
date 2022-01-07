
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int retune_timer; } ;


 int del_timer_sync (int *) ;

void mmc_retune_timer_stop(struct mmc_host *host)
{
 del_timer_sync(&host->retune_timer);
}
