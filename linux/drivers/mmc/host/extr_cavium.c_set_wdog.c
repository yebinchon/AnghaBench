
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct cvm_mmc_slot {unsigned int clock; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ MIO_EMM_WDOG (TYPE_1__*) ;
 unsigned int NSEC_PER_SEC ;
 int writeq (unsigned int,scalar_t__) ;

__attribute__((used)) static void set_wdog(struct cvm_mmc_slot *slot, unsigned int ns)
{
 u64 timeout;

 if (!slot->clock)
  return;

 if (ns)
  timeout = (slot->clock * ns) / NSEC_PER_SEC;
 else
  timeout = (slot->clock * 850ull) / 1000ull;
 writeq(timeout, slot->host->base + MIO_EMM_WDOG(slot->host));
}
