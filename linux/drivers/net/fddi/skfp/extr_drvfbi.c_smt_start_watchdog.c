
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wdog_used; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B2_WDOG_CRTL ;
 int SK_UNUSED (struct s_smc*) ;
 int TIM_START ;
 int outpw (int ,int ) ;

void smt_start_watchdog(struct s_smc *smc)
{
 SK_UNUSED(smc) ;
}
