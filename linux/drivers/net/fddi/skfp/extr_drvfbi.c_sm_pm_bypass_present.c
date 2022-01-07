
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int ADDR (int ) ;
 int B0_DAS ;
 int DAS_BYP_ST ;
 int FALSE ;
 int TRUE ;
 int inp (int ) ;

int sm_pm_bypass_present(struct s_smc *smc)
{
 return (inp(ADDR(B0_DAS)) & DAS_BYP_ST) ? TRUE : FALSE;
}
