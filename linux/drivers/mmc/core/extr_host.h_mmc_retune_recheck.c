
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int hold_retune; int retune_now; } ;



__attribute__((used)) static inline void mmc_retune_recheck(struct mmc_host *host)
{
 if (host->hold_retune <= 1)
  host->retune_now = 1;
}
