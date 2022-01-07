
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_srf_evc {int evc_code; int evc_index; } ;
struct s_smc {struct s_srf_evc* evcs; } ;


 unsigned int MAX_EVCS ;

__attribute__((used)) static struct s_srf_evc *smt_get_evc(struct s_smc *smc, int code, int index)
{
 unsigned int i ;
 struct s_srf_evc *evc ;

 for (i = 0, evc = smc->evcs ; i < MAX_EVCS ; i++, evc++) {
  if (evc->evc_code == code && evc->evc_index == index)
   return evc;
 }
 return ((void*)0);
}
