
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {unsigned int timer_quantum_ns; } ;



unsigned int ef4_usecs_to_ticks(struct ef4_nic *efx, unsigned int usecs)
{
 if (usecs == 0)
  return 0;
 if (usecs * 1000 < efx->timer_quantum_ns)
  return 1;
 return usecs * 1000 / efx->timer_quantum_ns;
}
