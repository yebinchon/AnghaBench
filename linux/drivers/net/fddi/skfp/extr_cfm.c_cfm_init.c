
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rm_loop; scalar_t__ rm_join; } ;
struct TYPE_5__ {int fddiSMTCF_State; } ;
struct s_smc {TYPE_1__* y; TYPE_3__ r; TYPE_2__ mib; } ;
struct TYPE_4__ {void* cem_pst; scalar_t__ scrub; } ;


 int ACTIONS (int ) ;
 void* CEM_PST_DOWN ;
 size_t PA ;
 size_t PB ;
 int SC0_ISOLATED ;

void cfm_init(struct s_smc *smc)
{
 smc->mib.fddiSMTCF_State = ACTIONS(SC0_ISOLATED) ;
 smc->r.rm_join = 0 ;
 smc->r.rm_loop = 0 ;
 smc->y[PA].scrub = 0 ;
 smc->y[PB].scrub = 0 ;
 smc->y[PA].cem_pst = CEM_PST_DOWN ;
 smc->y[PB].cem_pst = CEM_PST_DOWN ;
}
