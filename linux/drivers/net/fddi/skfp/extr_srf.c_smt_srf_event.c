
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct s_srf_evc {int* evc_cond_state; int evc_rep_required; void** evc_multiple; } ;
struct TYPE_4__ {void* TSR; int sr_state; int SRThreshold; void* any_report; } ;
struct TYPE_3__ {int fddiSMTStatRptPolicy; int fddiSMTTransitionTimeStamp; } ;
struct s_smc {TYPE_2__ srf; TYPE_1__ mib; } ;


 int DB_SMT (char*,...) ;
 void* FALSE ;
 int RS_DUPADDR ;
 int RS_SET (struct s_smc*,int ) ;
 int SMT_COND_MAC_DUP_ADDR ;
 scalar_t__ SMT_IS_CONDITION (int) ;



 void* THRESHOLD_2 ;
 int THRESHOLD_32 ;
 int TICKS_PER_SECOND ;
 void* TRUE ;
 int clear_all_rep (struct s_smc*) ;
 struct s_srf_evc* smt_get_evc (struct s_smc*,int,int) ;
 void* smt_get_time () ;
 int smt_send_srf (struct s_smc*) ;
 int smt_set_timestamp (struct s_smc*,int ) ;
 int snmp_srf_event (struct s_smc*,struct s_srf_evc*) ;
 int * srf_names ;

void smt_srf_event(struct s_smc *smc, int code, int index, int cond)
{
 struct s_srf_evc *evc ;
 int cond_asserted = 0 ;
 int cond_deasserted = 0 ;
 int event_occurred = 0 ;
 int tsr ;
 int T_Limit = 2*TICKS_PER_SECOND ;

 if (code == SMT_COND_MAC_DUP_ADDR && cond) {
  RS_SET(smc,RS_DUPADDR) ;
 }

 if (code) {
  DB_SMT("SRF: %s index %d", srf_names[code], index);

  if (!(evc = smt_get_evc(smc,code,index))) {
   DB_SMT("SRF : smt_get_evc() failed");
   return ;
  }



  if (SMT_IS_CONDITION(code)) {
   if (*evc->evc_cond_state == cond)
    return ;
  }




  smt_set_timestamp(smc,smc->mib.fddiSMTTransitionTimeStamp) ;
  if (SMT_IS_CONDITION(code)) {
   DB_SMT("SRF: condition is %s", cond ? "ON" : "OFF");
   if (cond) {
    *evc->evc_cond_state = TRUE ;
    evc->evc_rep_required = TRUE ;
    smc->srf.any_report = TRUE ;
    cond_asserted = TRUE ;
   }
   else {
    *evc->evc_cond_state = FALSE ;
    cond_deasserted = TRUE ;
   }
  }
  else {
   if (evc->evc_rep_required) {
    *evc->evc_multiple = TRUE ;
   }
   else {
    evc->evc_rep_required = TRUE ;
    *evc->evc_multiple = FALSE ;
   }
   smc->srf.any_report = TRUE ;
   event_occurred = TRUE ;
  }



 }
 tsr = smt_get_time() - smc->srf.TSR ;

 switch (smc->srf.sr_state) {
 case 130 :

  if (cond_asserted && tsr < T_Limit) {
   smc->srf.SRThreshold = THRESHOLD_2 ;
   smc->srf.sr_state = 129 ;
   break ;
  }

  if (cond_deasserted && tsr < T_Limit) {
   smc->srf.sr_state = 129 ;
   break ;
  }

  if (event_occurred && tsr < T_Limit) {
   smc->srf.sr_state = 129 ;
   break ;
  }

  if (cond_asserted && tsr >= T_Limit) {
   smc->srf.SRThreshold = THRESHOLD_2 ;
   smc->srf.TSR = smt_get_time() ;
   smt_send_srf(smc) ;
   break ;
  }

  if (cond_deasserted && tsr >= T_Limit) {
   smc->srf.TSR = smt_get_time() ;
   smt_send_srf(smc) ;
   break ;
  }

  if (event_occurred && tsr >= T_Limit) {
   smc->srf.TSR = smt_get_time() ;
   smt_send_srf(smc) ;
   break ;
  }

  if (smc->srf.any_report && (u_long) tsr >=
   smc->srf.SRThreshold) {
   smc->srf.SRThreshold *= 2 ;
   if (smc->srf.SRThreshold > THRESHOLD_32)
    smc->srf.SRThreshold = THRESHOLD_32 ;
   smc->srf.TSR = smt_get_time() ;
   smt_send_srf(smc) ;
   break ;
  }

  if (!smc->mib.fddiSMTStatRptPolicy) {
   smc->srf.sr_state = 128 ;
   break ;
  }
  break ;
 case 129 :

  if (tsr >= T_Limit) {
   smc->srf.sr_state = 130 ;
   smc->srf.TSR = smt_get_time() ;
   smt_send_srf(smc) ;
   break ;
  }

  if (cond_asserted) {
   smc->srf.SRThreshold = THRESHOLD_2 ;
  }




  if (!smc->mib.fddiSMTStatRptPolicy) {
   smc->srf.sr_state = 128 ;
   break ;
  }
  break ;
 case 128 :
  if (smc->mib.fddiSMTStatRptPolicy) {
   smc->srf.sr_state = 130 ;
   smc->srf.TSR = smt_get_time() ;
   smc->srf.SRThreshold = THRESHOLD_2 ;
   clear_all_rep(smc) ;
   break ;
  }
  break ;
 }
}
