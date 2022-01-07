
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int local_irq_disable () ;

void lkdtm_HARDLOCKUP(void)
{
 local_irq_disable();
 for (;;)
  cpu_relax();
}
