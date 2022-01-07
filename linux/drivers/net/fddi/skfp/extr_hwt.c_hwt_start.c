
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef scalar_t__ u_long ;
struct TYPE_2__ {long t_stop; int timer_activ; scalar_t__ t_start; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B2_TI_CRTL ;
 int B2_TI_INI ;
 scalar_t__ HWT_MAX ;
 int TIM_START ;
 int TRUE ;
 int outpd (int ,scalar_t__) ;
 int outpw (int ,int ) ;

void hwt_start(struct s_smc *smc, u_long time)
{
 u_short cnt ;

 if (time > HWT_MAX)
  time = HWT_MAX ;

 smc->hw.t_start = time ;
 smc->hw.t_stop = 0L ;

 cnt = (u_short)time ;




 if (!cnt)
  cnt++ ;

 outpd(ADDR(B2_TI_INI), (u_long) cnt * 200) ;
 outpw(ADDR(B2_TI_CRTL), TIM_START) ;

 smc->hw.timer_activ = TRUE ;
}
