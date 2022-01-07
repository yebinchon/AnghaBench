
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_srf_evc {scalar_t__* evc_cond_state; scalar_t__* evc_multiple; scalar_t__ evc_rep_required; int evc_code; } ;
struct TYPE_2__ {scalar_t__ any_report; } ;
struct s_smc {TYPE_1__ srf; struct s_srf_evc* evcs; } ;


 scalar_t__ FALSE ;
 unsigned int MAX_EVCS ;
 scalar_t__ SMT_IS_CONDITION (int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static void clear_reported(struct s_smc *smc)
{
 struct s_srf_evc *evc ;
 unsigned int i ;

 smc->srf.any_report = FALSE ;
 for (i = 0, evc = smc->evcs ; i < MAX_EVCS ; i++, evc++) {
  if (SMT_IS_CONDITION(evc->evc_code)) {
   if (*evc->evc_cond_state == FALSE)
    evc->evc_rep_required = FALSE ;
   else
    smc->srf.any_report = TRUE ;
  }
  else {
   evc->evc_rep_required = FALSE ;
   *evc->evc_multiple = FALSE ;
  }
 }
}
