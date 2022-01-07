
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int timer_quantum_ns; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;

unsigned int efx_ticks_to_usecs(struct efx_nic *efx, unsigned int ticks)
{



 return DIV_ROUND_UP(ticks * efx->timer_quantum_ns, 1000);
}
