
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fddiSMTCF_State; int fddiSMTPeerWrapFlag; TYPE_3__* m; } ;
struct s_smc {TYPE_4__ mib; TYPE_2__* y; } ;
struct TYPE_7__ {int fddiMACDownstreamPORTType; } ;
struct TYPE_6__ {scalar_t__ pc_mode; TYPE_1__* mib; } ;
struct TYPE_5__ {scalar_t__ fddiPORTNeighborType; } ;


 int AFLAG ;
 int DB_CFM (char*,char*,int ,int ) ;
 int FALSE ;
 int INDEX_MAC ;
 size_t MAC0 ;
 size_t PA ;
 size_t PB ;
 scalar_t__ PM_PEER ;
 size_t PS ;
 int SC10_C_WRAP_B ;
 int SC11_C_WRAP_S ;
 int SC9_C_WRAP_A ;
 int SMT_COND_SMT_PEER_WRAP ;
 int SMT_EVENT_MAC_PATH_CHANGE ;
 int TRUE ;
 scalar_t__ TS ;
 int all_selection_criteria (struct s_smc*) ;
 int cem_priv_state (struct s_smc*,int) ;
 int * cf_to_ptype ;
 int * cfm_events ;
 int cfm_fsm (struct s_smc*,int) ;
 int cfm_state_change (struct s_smc*,int) ;
 int * cfm_states ;
 int smt_srf_event (struct s_smc*,int ,int ,int) ;

void cfm(struct s_smc *smc, int event)
{
 int state ;
 int cond ;
 int oldstate ;







 all_selection_criteria (smc);



 cem_priv_state (smc, event);

 oldstate = smc->mib.fddiSMTCF_State ;
 do {
  DB_CFM("CFM : state %s%s event %s",
         smc->mib.fddiSMTCF_State & AFLAG ? "ACTIONS " : "",
         cfm_states[smc->mib.fddiSMTCF_State & ~AFLAG],
         cfm_events[event]);
  state = smc->mib.fddiSMTCF_State ;
  cfm_fsm(smc,event) ;
  event = 0 ;
 } while (state != smc->mib.fddiSMTCF_State) ;





 cond = FALSE ;
 if ( (smc->mib.fddiSMTCF_State == SC9_C_WRAP_A &&
  smc->y[PA].pc_mode == PM_PEER) ||
  (smc->mib.fddiSMTCF_State == SC10_C_WRAP_B &&
  smc->y[PB].pc_mode == PM_PEER) ||
  (smc->mib.fddiSMTCF_State == SC11_C_WRAP_S &&
  smc->y[PS].pc_mode == PM_PEER &&
  smc->y[PS].mib->fddiPORTNeighborType != TS ) ) {
   cond = TRUE ;
 }
 if (cond != smc->mib.fddiSMTPeerWrapFlag)
  smt_srf_event(smc,SMT_COND_SMT_PEER_WRAP,0,cond) ;
 smc->mib.m[MAC0].fddiMACDownstreamPORTType =
  cf_to_ptype[smc->mib.fddiSMTCF_State] ;
 cfm_state_change(smc,(int)smc->mib.fddiSMTCF_State) ;
}
