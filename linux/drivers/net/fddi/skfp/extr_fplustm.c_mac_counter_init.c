
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {TYPE_1__* m; } ;
struct TYPE_7__ {int err_stats; } ;
struct TYPE_8__ {TYPE_3__ fp; } ;
struct s_smc {TYPE_2__ mib; TYPE_4__ hw; } ;
struct err_st {int dummy; } ;
struct TYPE_5__ {scalar_t__ fddiMACRingOp_Ct; } ;


 int FM_A (int ) ;
 int FM_ECNTR ;
 int FM_FCNTR ;
 int FM_LCNTR ;
 size_t MAC0 ;
 int outpw (int ,int ) ;

__attribute__((used)) static void mac_counter_init(struct s_smc *smc)
{
 int i ;
 u_long *ec ;




 outpw(FM_A(FM_FCNTR),0) ;
 outpw(FM_A(FM_LCNTR),0) ;
 outpw(FM_A(FM_ECNTR),0) ;



 ec = (u_long *)&smc->hw.fp.err_stats ;
 for (i = (sizeof(struct err_st)/sizeof(long)) ; i ; i--)
  *ec++ = 0L ;
 smc->mib.m[MAC0].fddiMACRingOp_Ct = 0 ;
}
