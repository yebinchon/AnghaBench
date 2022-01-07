
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fddiSMTECMState; } ;
struct s_smc {TYPE_1__ mib; } ;


 int AFLAG ;
 int DB_ECM (char*,char*,int ,int ) ;
 int * ecm_events ;
 int ecm_fsm (struct s_smc*,int) ;
 int ecm_state_change (struct s_smc*,int) ;
 int * ecm_states ;

void ecm(struct s_smc *smc, int event)
{
 int state ;

 do {
  DB_ECM("ECM : state %s%s event %s",
         smc->mib.fddiSMTECMState & AFLAG ? "ACTIONS " : "",
         ecm_states[smc->mib.fddiSMTECMState & ~AFLAG],
         ecm_events[event]);
  state = smc->mib.fddiSMTECMState ;
  ecm_fsm(smc,event) ;
  event = 0 ;
 } while (state != smc->mib.fddiSMTECMState) ;
 ecm_state_change(smc,(int)smc->mib.fddiSMTECMState) ;
}
