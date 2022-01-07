
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_activ; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B2_TI_CRTL ;
 int FALSE ;
 int TIM_CL_IRQ ;
 int TIM_STOP ;
 int outpw (int ,int ) ;

void hwt_stop(struct s_smc *smc)
{
 outpw(ADDR(B2_TI_CRTL), TIM_STOP) ;
 outpw(ADDR(B2_TI_CRTL), TIM_CL_IRQ) ;

 smc->hw.timer_activ = FALSE ;
}
