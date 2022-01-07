
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_long ;
struct TYPE_2__ {scalar_t__ t_start; scalar_t__ t_stop; scalar_t__ timer_activ; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B2_TI_VAL ;
 int GET_ISR () ;
 int IS_TIMINT ;
 int hwt_restart (struct s_smc*) ;
 int hwt_stop (struct s_smc*) ;
 int inpd (int ) ;

u_long hwt_read(struct s_smc *smc)
{
 u_short tr ;
 u_long is ;

 if (smc->hw.timer_activ) {
  hwt_stop(smc) ;
  tr = (u_short)((inpd(ADDR(B2_TI_VAL))/200) & 0xffff) ;

  is = GET_ISR() ;

  if ((tr > smc->hw.t_start) || (is & IS_TIMINT)) {
   hwt_restart(smc) ;
   smc->hw.t_stop = smc->hw.t_start ;
  }
  else
   smc->hw.t_stop = smc->hw.t_start - tr ;
 }
 return smc->hw.t_stop;
}
