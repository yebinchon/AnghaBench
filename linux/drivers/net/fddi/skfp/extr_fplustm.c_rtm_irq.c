
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;


 int ADDR (int ) ;
 int AIX_EVENT (struct s_smc*,int ,int ,int ,int ) ;
 int B2_RTM_CRTL ;
 int DB_RMT (char*) ;
 scalar_t__ FDDI_RING_STATUS ;
 scalar_t__ FDDI_RTT ;
 scalar_t__ FDDI_SMT_EVENT ;
 int FM_A (int ) ;
 int FM_CMDREG1 ;
 int FM_ICL ;
 int TIM_CL_IRQ ;
 int TIM_RES_TOK ;
 int TIM_START ;
 int inpw (int ) ;
 int outpw (int ,int ) ;
 int smt_get_event_word (struct s_smc*) ;

void rtm_irq(struct s_smc *smc)
{
 outpw(ADDR(B2_RTM_CRTL),TIM_CL_IRQ) ;
 if (inpw(ADDR(B2_RTM_CRTL)) & TIM_RES_TOK) {
  outpw(FM_A(FM_CMDREG1),FM_ICL) ;
  DB_RMT("RMT: fddiPATHT_Rmode expired");
  AIX_EVENT(smc, (u_long) FDDI_RING_STATUS,
    (u_long) FDDI_SMT_EVENT,
    (u_long) FDDI_RTT, smt_get_event_word(smc));
 }
 outpw(ADDR(B2_RTM_CRTL),TIM_START) ;
}
