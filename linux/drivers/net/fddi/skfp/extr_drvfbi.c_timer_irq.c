
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_start; int t_stop; } ;
struct s_smc {TYPE_1__ hw; } ;


 int hwt_restart (struct s_smc*) ;
 int smt_timer_done (struct s_smc*) ;

void timer_irq(struct s_smc *smc)
{
 hwt_restart(smc);
 smc->hw.t_stop = smc->hw.t_start;
 smt_timer_done(smc) ;
}
