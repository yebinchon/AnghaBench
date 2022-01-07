
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_smc {TYPE_1__* y; } ;
struct lem_counter {scalar_t__ lem_on; } ;
struct TYPE_2__ {struct lem_counter lem; } ;


 int CLEAR (int ,int ) ;
 int PLC (int,int ) ;
 int PL_INTR_MASK ;
 int PL_LE_CTR ;

__attribute__((used)) static void sm_ph_lem_stop(struct s_smc *smc, int np)
{
 struct lem_counter *lem = &smc->y[np].lem ;

 lem->lem_on = 0 ;
 CLEAR(PLC(np,PL_INTR_MASK),PL_LE_CTR) ;
}
