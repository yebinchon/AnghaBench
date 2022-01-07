
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ecm_line_state; scalar_t__ sb_flag; scalar_t__ trace_prop; int path_test; } ;
struct TYPE_3__ {int fddiSMTECMState; } ;
struct s_smc {TYPE_2__ e; TYPE_1__ mib; } ;


 int ACTIONS (int ) ;
 int EC0_OUT ;
 int FALSE ;
 int PT_PASSED ;

void ecm_init(struct s_smc *smc)
{
 smc->e.path_test = PT_PASSED ;
 smc->e.trace_prop = 0 ;
 smc->e.sb_flag = 0 ;
 smc->mib.fddiSMTECMState = ACTIONS(EC0_OUT) ;
 smc->e.ecm_line_state = FALSE ;
}
