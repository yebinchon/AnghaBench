
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


struct TYPE_11__ {scalar_t__ uniq_ticks; scalar_t__ please_reconnect; scalar_t__* pend; scalar_t__ smt_tid; } ;
struct TYPE_12__ {int * a; } ;
struct TYPE_8__ {TYPE_6__ sid_node; scalar_t__* sid_oem; } ;
struct TYPE_10__ {TYPE_3__* m; TYPE_2__ fddiSMTStationId; int * fddiSMTManufacturerData; } ;
struct TYPE_7__ {int fddi_home_addr; } ;
struct s_smc {TYPE_5__ sm; TYPE_4__ mib; TYPE_1__ hw; } ;
struct TYPE_9__ {int fddiMACUNDA_Flag; int fddiMACDupAddressTest; int fddiMACSMTAddress; } ;


 int DA_NONE ;
 int FALSE ;
 size_t MAC0 ;
 int SMT_MAX_TEST ;
 int bitrev8 (int ) ;
 int driver_get_bia (struct s_smc*,TYPE_6__*) ;
 int smt_clear_old_una_dna (struct s_smc*) ;
 int smt_clear_una_dna (struct s_smc*) ;

void smt_agent_init(struct s_smc *smc)
{
 int i ;




 smc->mib.m[MAC0].fddiMACSMTAddress = smc->hw.fddi_home_addr ;




 smc->mib.fddiSMTStationId.sid_oem[0] = 0 ;
 smc->mib.fddiSMTStationId.sid_oem[1] = 0 ;
 driver_get_bia(smc,&smc->mib.fddiSMTStationId.sid_node) ;
 for (i = 0 ; i < 6 ; i ++) {
  smc->mib.fddiSMTStationId.sid_node.a[i] =
   bitrev8(smc->mib.fddiSMTStationId.sid_node.a[i]);
 }
 smc->mib.fddiSMTManufacturerData[0] =
  smc->mib.fddiSMTStationId.sid_node.a[0] ;
 smc->mib.fddiSMTManufacturerData[1] =
  smc->mib.fddiSMTStationId.sid_node.a[1] ;
 smc->mib.fddiSMTManufacturerData[2] =
  smc->mib.fddiSMTStationId.sid_node.a[2] ;
 smc->sm.smt_tid = 0 ;
 smc->mib.m[MAC0].fddiMACDupAddressTest = DA_NONE ;
 smc->mib.m[MAC0].fddiMACUNDA_Flag = FALSE ;

 smt_clear_una_dna(smc) ;
 smt_clear_old_una_dna(smc) ;

 for (i = 0 ; i < SMT_MAX_TEST ; i++)
  smc->sm.pend[i] = 0 ;
 smc->sm.please_reconnect = 0 ;
 smc->sm.uniq_ticks = 0 ;
}
