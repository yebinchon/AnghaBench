
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_smc {TYPE_1__* y; } ;
struct lem_counter {int lem_on; long lem_errors; } ;
struct TYPE_2__ {struct lem_counter lem; } ;


 int PLC (int,int ) ;
 int PL_INTR_MASK ;
 int PL_LE_CTR ;
 int PL_LE_THRESHOLD ;
 int PL_LINK_ERR_CTR ;
 int SETMASK (int ,int ,int ) ;
 int inpw (int ) ;
 int outpw (int ,int) ;

__attribute__((used)) static void sm_ph_lem_start(struct s_smc *smc, int np, int threshold)
{
 struct lem_counter *lem = &smc->y[np].lem ;

 lem->lem_on = 1 ;
 lem->lem_errors = 0L ;





 outpw(PLC(np,PL_LE_THRESHOLD),threshold) ;
 (void)inpw(PLC(np,PL_LINK_ERR_CTR)) ;


 SETMASK(PLC(np,PL_INTR_MASK),PL_LE_CTR,PL_LE_CTR) ;
}
