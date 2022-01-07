
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int ADDR (int ) ;
 int B2_RTM_CRTL ;
 int B2_RTM_INI ;
 int TIM_START ;
 int outpd (int ,int ) ;
 int outpw (int ,int ) ;

__attribute__((used)) static void rtm_init(struct s_smc *smc)
{
 outpd(ADDR(B2_RTM_INI),0) ;
 outpw(ADDR(B2_RTM_CRTL),TIM_START) ;
}
