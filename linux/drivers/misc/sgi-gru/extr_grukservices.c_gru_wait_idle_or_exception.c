
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_status {scalar_t__ istatus; } ;


 scalar_t__ CBS_ACTIVE ;
 int barrier () ;
 int cpu_relax () ;

__attribute__((used)) static int gru_wait_idle_or_exception(struct gru_control_block_status *gen)
{
 while (gen->istatus >= CBS_ACTIVE) {
  cpu_relax();
  barrier();
 }
 return gen->istatus;
}
