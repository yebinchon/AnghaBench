
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_para {int p_type; int p_len; } ;
struct smt_header {int smt_len; } ;
struct s_smc {int dummy; } ;


 int DB_SMT (char*,int) ;
 int PARA_LEN ;
 int SK_UNUSED (struct s_smc*) ;
 int SMT_P_ECHODATA ;

void *sm_to_para(struct s_smc *smc, struct smt_header *sm, int para)
{
 char *p ;
 int len ;
 int plen ;
 void *found = ((void*)0);

 SK_UNUSED(smc) ;

 len = sm->smt_len ;
 p = (char *)(sm+1) ;
 while (len > 0 ) {
  if (((struct smt_para *)p)->p_type == para)
   found = (void *) p ;
  plen = ((struct smt_para *)p)->p_len + PARA_LEN ;
  p += plen ;
  len -= plen ;
  if (len < 0) {
   DB_SMT("SMT : sm_to_para - length error %d", plen);
   return ((void*)0);
  }
  if ((plen & 3) && (para != SMT_P_ECHODATA)) {
   DB_SMT("SMT : sm_to_para - odd length %d", plen);
   return ((void*)0);
  }
  if (found)
   return found;
 }
 return ((void*)0);
}
