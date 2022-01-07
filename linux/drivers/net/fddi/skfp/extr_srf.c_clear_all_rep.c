
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_srf_evc {void** evc_cond_state; int evc_code; void* evc_rep_required; } ;
struct TYPE_2__ {void* any_report; } ;
struct s_smc {TYPE_1__ srf; struct s_srf_evc* evcs; } ;


 void* FALSE ;
 unsigned int MAX_EVCS ;
 scalar_t__ SMT_IS_CONDITION (int ) ;

__attribute__((used)) static void clear_all_rep(struct s_smc *smc)
{
 struct s_srf_evc *evc ;
 unsigned int i ;

 for (i = 0, evc = smc->evcs ; i < MAX_EVCS ; i++, evc++) {
  evc->evc_rep_required = FALSE ;
  if (SMT_IS_CONDITION(evc->evc_code))
   *evc->evc_cond_state = FALSE ;
 }
 smc->srf.any_report = FALSE ;
}
