
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_fast; } ;
struct s_smc {TYPE_1__ t; } ;


 int EVENT_SMT ;
 int EV_TOKEN (int ,int ) ;
 int SM_FAST ;
 int smt_timer_start (struct s_smc*,int *,long,int ) ;

void smt_force_irq(struct s_smc *smc)
{
 smt_timer_start(smc,&smc->t.st_fast,32L, EV_TOKEN(EVENT_SMT,SM_FAST));
}
