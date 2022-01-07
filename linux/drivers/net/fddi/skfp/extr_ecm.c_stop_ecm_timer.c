
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tm_active; } ;
struct TYPE_3__ {TYPE_2__ ecm_timer; } ;
struct s_smc {TYPE_1__ e; } ;


 int smt_timer_stop (struct s_smc*,TYPE_2__*) ;

__attribute__((used)) static void stop_ecm_timer(struct s_smc *smc)
{
 if (smc->e.ecm_timer.tm_active)
  smt_timer_stop(smc,&smc->e.ecm_timer) ;
}
