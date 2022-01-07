
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {TYPE_2__* m; TYPE_1__* a; } ;
struct s_smc {TYPE_3__ mib; } ;
struct TYPE_5__ {int fddiMACT_Req; int fddiMACT_ReqMIB; int fddiMACT_Max; int fddiMACT_MaxMIB; int fddiMACTvxValue; int fddiMACTvxValueMIB; } ;
struct TYPE_4__ {int fddiPATHMaxT_Req; int fddiPATHT_MaxLowerBound; int fddiPATHTVXLowerBound; } ;


 int AIX_EVENT (struct s_smc*,int ,int ,int ,int ) ;
 scalar_t__ FDDI_REMOTE_T_REQ ;
 scalar_t__ FDDI_RING_STATUS ;
 scalar_t__ FDDI_SMT_EVENT ;
 size_t MAC0 ;
 size_t PATH0 ;
 int set_min_max (int,int ,int ,int *) ;
 int smt_get_event_word (struct s_smc*) ;

int smt_set_mac_opvalues(struct s_smc *smc)
{
 int st ;
 int st2 ;

 st = set_min_max(1,smc->mib.m[MAC0].fddiMACTvxValueMIB,
  smc->mib.a[PATH0].fddiPATHTVXLowerBound,
  &smc->mib.m[MAC0].fddiMACTvxValue) ;
 st |= set_min_max(0,smc->mib.m[MAC0].fddiMACT_MaxMIB,
  smc->mib.a[PATH0].fddiPATHT_MaxLowerBound,
  &smc->mib.m[MAC0].fddiMACT_Max) ;
 st |= (st2 = set_min_max(0,smc->mib.m[MAC0].fddiMACT_ReqMIB,
  smc->mib.a[PATH0].fddiPATHMaxT_Req,
  &smc->mib.m[MAC0].fddiMACT_Req)) ;
 if (st2) {



  AIX_EVENT(smc, (u_long) FDDI_RING_STATUS, (u_long)
   FDDI_SMT_EVENT, (u_long) FDDI_REMOTE_T_REQ,
   smt_get_event_word(smc));
 }
 return st;
}
