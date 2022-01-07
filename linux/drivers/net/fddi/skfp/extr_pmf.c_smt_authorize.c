
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_para {int p_len; } ;
struct smt_header {int smt_sid; } ;
struct TYPE_2__ {scalar_t__ fddiPRPMFPasswd; int fddiPRPMFStation; } ;
struct s_smc {TYPE_1__ mib; } ;


 int SMT_P_AUTHOR ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ sm_to_para (struct s_smc*,struct smt_header*,int ) ;

__attribute__((used)) static int smt_authorize(struct s_smc *smc, struct smt_header *sm)
{
 struct smt_para *pa ;
 int i ;
 char *p ;




 p = (char *) &smc->mib.fddiPRPMFStation ;
 for (i = 0 ; i < 8 && !p[i] ; i++)
  ;
 if (i != 8) {
  if (memcmp((char *) &sm->smt_sid,
   (char *) &smc->mib.fddiPRPMFStation,8))
   return 1;
 }



 p = (char *) smc->mib.fddiPRPMFPasswd ;
 for (i = 0 ; i < 8 && !p[i] ; i++)
  ;
 if (i != 8) {
  pa = (struct smt_para *) sm_to_para(smc,sm,SMT_P_AUTHOR) ;
  if (!pa)
   return 1;
  if (pa->p_len != 8)
   return 1;
  if (memcmp((char *)(pa+1),(char *)smc->mib.fddiPRPMFPasswd,8))
   return 1;
 }
 return 0;
}
