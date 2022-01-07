
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mdr2init; int mdr3init; int frselreg_init; } ;
struct TYPE_4__ {TYPE_1__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;


 int FM_BMMODE ;
 int FM_CHKPAR ;
 int FM_ENHSRQ ;
 int FM_ENNPRQ ;
 int FM_ENRCVADSWAP ;
 int FM_ENXMTADSWAP ;
 int FM_LSB ;
 int FM_MENRQAUNLCK ;
 int FM_MENRS ;
 int FM_PARITY ;

void init_driver_fplus(struct s_smc *smc)
{
 smc->hw.fp.mdr2init = FM_LSB | FM_BMMODE | FM_ENNPRQ | FM_ENHSRQ | 3 ;




 smc->hw.fp.mdr3init = FM_MENRQAUNLCK | FM_MENRS ;





}
