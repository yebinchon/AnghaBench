
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvmc_hmc {scalar_t__ state; unsigned long index; int lock; } ;
struct TYPE_2__ {unsigned long max_hmc_index; } ;


 struct ibmvmc_hmc* hmcs ;
 scalar_t__ ibmhmc_state_free ;
 scalar_t__ ibmhmc_state_initial ;
 TYPE_1__ ibmvmc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ibmvmc_hmc *ibmvmc_get_free_hmc(void)
{
 unsigned long i;
 unsigned long flags;




 for (i = 0; i <= ibmvmc.max_hmc_index; i++) {
  spin_lock_irqsave(&hmcs[i].lock, flags);
  if (hmcs[i].state == ibmhmc_state_free) {
   hmcs[i].index = i;
   hmcs[i].state = ibmhmc_state_initial;
   spin_unlock_irqrestore(&hmcs[i].lock, flags);
   return &hmcs[i];
  }
  spin_unlock_irqrestore(&hmcs[i].lock, flags);
 }

 return ((void*)0);
}
