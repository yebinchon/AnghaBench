
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int can_retune; int retune_period; int retune_timer; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void mmc_retune_enable(struct mmc_host *host)
{
 host->can_retune = 1;
 if (host->retune_period)
  mod_timer(&host->retune_timer,
     jiffies + host->retune_period * HZ);
}
