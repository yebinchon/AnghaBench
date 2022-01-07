
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int hold_retune; scalar_t__ retune_now; } ;



__attribute__((used)) static inline void mmc_retune_hold_now(struct mmc_host *host)
{
 host->retune_now = 0;
 host->hold_retune += 1;
}
