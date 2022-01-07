
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int* a; } ;
struct TYPE_11__ {TYPE_4__ group_addr; } ;
struct TYPE_9__ {int* a; } ;
struct TYPE_12__ {TYPE_5__ fp; TYPE_3__ fddi_home_addr; } ;
struct TYPE_8__ {TYPE_1__* m; } ;
struct s_smc {TYPE_6__ hw; TYPE_2__ mib; } ;
struct TYPE_7__ {long fddiMACT_Req; } ;


 int FM_A (int ) ;
 int FM_LAGC ;
 int FM_LAGL ;
 int FM_LAGM ;
 int FM_LAIC ;
 int FM_LAIL ;
 int FM_LAIM ;
 int FM_SAGP ;
 int FM_SAID ;
 int FM_TREQ0 ;
 int FM_TREQ1 ;
 size_t MAC0 ;
 unsigned short my_sagp ;
 unsigned short my_said ;
 int outpw (int ,unsigned short) ;

__attribute__((used)) static void set_formac_addr(struct s_smc *smc)
{
 long t_requ = smc->mib.m[MAC0].fddiMACT_Req ;

 outpw(FM_A(FM_SAID),my_said) ;
 outpw(FM_A(FM_LAIL),(unsigned short)((smc->hw.fddi_home_addr.a[4]<<8) +
     smc->hw.fddi_home_addr.a[5])) ;
 outpw(FM_A(FM_LAIC),(unsigned short)((smc->hw.fddi_home_addr.a[2]<<8) +
     smc->hw.fddi_home_addr.a[3])) ;
 outpw(FM_A(FM_LAIM),(unsigned short)((smc->hw.fddi_home_addr.a[0]<<8) +
     smc->hw.fddi_home_addr.a[1])) ;

 outpw(FM_A(FM_SAGP),my_sagp) ;

 outpw(FM_A(FM_LAGL),(unsigned short)((smc->hw.fp.group_addr.a[4]<<8) +
     smc->hw.fp.group_addr.a[5])) ;
 outpw(FM_A(FM_LAGC),(unsigned short)((smc->hw.fp.group_addr.a[2]<<8) +
     smc->hw.fp.group_addr.a[3])) ;
 outpw(FM_A(FM_LAGM),(unsigned short)((smc->hw.fp.group_addr.a[0]<<8) +
     smc->hw.fp.group_addr.a[1])) ;


 outpw(FM_A(FM_TREQ1),(unsigned short)(t_requ>>16)) ;
 outpw(FM_A(FM_TREQ0),(unsigned short)t_requ) ;
}
