
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_activ; scalar_t__ t_stop; scalar_t__ t_start; } ;
struct s_smc {TYPE_1__ hw; } ;


 int FALSE ;
 int hwt_restart (struct s_smc*) ;

void hwt_init(struct s_smc *smc)
{
 smc->hw.t_start = 0 ;
 smc->hw.t_stop = 0 ;
 smc->hw.timer_activ = FALSE ;

 hwt_restart(smc) ;
}
