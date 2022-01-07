
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ hold_retune; } ;


 int WARN_ON (int) ;

void mmc_retune_release(struct mmc_host *host)
{
 if (host->hold_retune)
  host->hold_retune -= 1;
 else
  WARN_ON(1);
}
