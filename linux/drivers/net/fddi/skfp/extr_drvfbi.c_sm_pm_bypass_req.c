
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;


 int ADDR (int ) ;
 int B0_DAS ;


 int DAS_BYP_INS ;
 int DAS_BYP_RMV ;
 int DB_ECMN (int,char*,char*) ;
 scalar_t__ SMT_DAS ;
 int outp (int ,int ) ;

void sm_pm_bypass_req(struct s_smc *smc, int mode)
{
 DB_ECMN(1, "ECM : sm_pm_bypass_req(%s)",
  mode == 128 ? "BP_INSERT" : "BP_DEINSERT");

 if (smc->s.sas != SMT_DAS)
  return ;
}
