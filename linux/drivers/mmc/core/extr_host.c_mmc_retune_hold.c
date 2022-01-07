
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int retune_now; scalar_t__ hold_retune; } ;



void mmc_retune_hold(struct mmc_host *host)
{
 if (!host->hold_retune)
  host->retune_now = 1;
 host->hold_retune += 1;
}
