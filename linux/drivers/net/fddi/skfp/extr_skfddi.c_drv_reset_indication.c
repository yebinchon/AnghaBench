
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ResetRequested; } ;
struct s_smc {TYPE_1__ os; } ;


 int TRUE ;
 int pr_debug (char*) ;

void drv_reset_indication(struct s_smc *smc)
{
 pr_debug("entering drv_reset_indication\n");

 smc->os.ResetRequested = TRUE;

}
