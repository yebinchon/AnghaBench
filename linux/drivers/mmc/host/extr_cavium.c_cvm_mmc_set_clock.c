
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int f_min; int f_max; } ;
struct cvm_mmc_slot {unsigned int clock; struct mmc_host* mmc; } ;


 unsigned int max (unsigned int,int ) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static void cvm_mmc_set_clock(struct cvm_mmc_slot *slot, unsigned int clock)
{
 struct mmc_host *mmc = slot->mmc;

 clock = min(clock, mmc->f_max);
 clock = max(clock, mmc->f_min);
 slot->clock = clock;
}
