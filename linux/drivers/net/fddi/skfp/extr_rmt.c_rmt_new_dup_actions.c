
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rmt_dup_mac_behavior; } ;
struct TYPE_3__ {void* jm_flag; void* bn_flag; int da_flag; } ;
struct s_smc {TYPE_2__ s; TYPE_1__ r; } ;


 void* FALSE ;
 int SMT_E0135 ;
 int SMT_E0135_MSG ;
 int SMT_E0138 ;
 int SMT_E0138_MSG ;
 int SMT_ERR_LOG (struct s_smc*,int ,int ) ;
 int TRUE ;
 int rmt_leave_actions (struct s_smc*) ;
 int rmt_reinsert_actions (struct s_smc*) ;

__attribute__((used)) static void rmt_new_dup_actions(struct s_smc *smc)
{
 smc->r.da_flag = TRUE ;
 smc->r.bn_flag = FALSE ;
 smc->r.jm_flag = FALSE ;






 if (smc->s.rmt_dup_mac_behavior) {
  SMT_ERR_LOG(smc,SMT_E0138, SMT_E0138_MSG) ;
  rmt_reinsert_actions(smc) ;
 }
 else {
  SMT_ERR_LOG(smc,SMT_E0135, SMT_E0135_MSG) ;
  rmt_leave_actions(smc) ;
 }
}
