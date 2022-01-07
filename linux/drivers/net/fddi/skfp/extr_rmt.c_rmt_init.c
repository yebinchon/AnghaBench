
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int no_flag; scalar_t__ jm_flag; scalar_t__ bn_flag; scalar_t__ loop_avail; void* sm_ma_avail; scalar_t__ da_flag; int dup_addr_test; } ;
struct TYPE_4__ {TYPE_3__* m; } ;
struct s_smc {TYPE_2__ r; TYPE_1__ mib; } ;
struct TYPE_6__ {void* fddiMACMA_UnitdataAvailable; int fddiMACRMTState; } ;


 int ACTIONS (int ) ;
 int DA_NONE ;
 void* FALSE ;
 size_t MAC0 ;
 int RM0_ISOLATED ;
 int TRUE ;

void rmt_init(struct s_smc *smc)
{
 smc->mib.m[MAC0].fddiMACRMTState = ACTIONS(RM0_ISOLATED) ;
 smc->r.dup_addr_test = DA_NONE ;
 smc->r.da_flag = 0 ;
 smc->mib.m[MAC0].fddiMACMA_UnitdataAvailable = FALSE ;
 smc->r.sm_ma_avail = FALSE ;
 smc->r.loop_avail = 0 ;
 smc->r.bn_flag = 0 ;
 smc->r.jm_flag = 0 ;
 smc->r.no_flag = TRUE ;
}
