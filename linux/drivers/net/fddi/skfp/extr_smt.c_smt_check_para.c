
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct smt_header {int dummy; } ;
struct s_smc {int dummy; } ;


 int DB_SMT (char*,scalar_t__ const) ;
 int sm_to_para (struct s_smc*,struct smt_header*,int) ;

int smt_check_para(struct s_smc *smc, struct smt_header *sm,
     const u_short list[])
{
 const u_short *p = list ;
 while (*p) {
  if (!sm_to_para(smc,sm,(int) *p)) {
   DB_SMT("SMT: smt_check_para - missing para %hx", *p);
   return -1;
  }
  p++ ;
 }
 return 0;
}
