
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int * y; } ;


 int NUMPHYS ;
 int lem_evaluate (struct s_smc*,int *) ;

void sm_lem_evaluate(struct s_smc *smc)
{
 int np ;

 for (np = 0 ; np < NUMPHYS ; np++)
  lem_evaluate(smc,&smc->y[np]) ;
}
