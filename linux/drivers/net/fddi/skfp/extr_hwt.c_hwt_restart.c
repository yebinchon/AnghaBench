
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int hwt_stop (struct s_smc*) ;

void hwt_restart(struct s_smc *smc)
{
 hwt_stop(smc) ;
}
