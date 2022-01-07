
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_CMDREG1 ;
 int FM_ICLLA0 ;
 int FM_ICLLS ;
 int outpw (int ,int ) ;

void formac_tx_restart(struct s_smc *smc)
{
 outpw(FM_A(FM_CMDREG1),FM_ICLLS) ;
 outpw(FM_A(FM_CMDREG1),FM_ICLLA0) ;
}
