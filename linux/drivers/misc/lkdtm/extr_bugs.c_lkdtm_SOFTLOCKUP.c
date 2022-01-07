
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int preempt_disable () ;

void lkdtm_SOFTLOCKUP(void)
{
 preempt_disable();
 for (;;)
  cpu_relax();
}
