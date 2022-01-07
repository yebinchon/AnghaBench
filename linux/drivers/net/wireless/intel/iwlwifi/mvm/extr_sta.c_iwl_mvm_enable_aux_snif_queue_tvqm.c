
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {TYPE_3__* trans; } ;
struct TYPE_8__ {scalar_t__ tfd_q_hang_detect; } ;
struct TYPE_7__ {TYPE_2__* trans_cfg; } ;
struct TYPE_6__ {TYPE_1__* base_params; } ;
struct TYPE_5__ {unsigned int wd_timeout; } ;


 int IWL_MAX_TID_COUNT ;
 unsigned int IWL_WATCHDOG_DISABLED ;
 int WARN_ON (int) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_tvqm_enable_txq (struct iwl_mvm*,int ,int ,unsigned int) ;
 TYPE_4__ iwlmvm_mod_params ;

__attribute__((used)) static int iwl_mvm_enable_aux_snif_queue_tvqm(struct iwl_mvm *mvm, u8 sta_id)
{
 unsigned int wdg_timeout = iwlmvm_mod_params.tfd_q_hang_detect ?
  mvm->trans->trans_cfg->base_params->wd_timeout :
  IWL_WATCHDOG_DISABLED;

 WARN_ON(!iwl_mvm_has_new_tx_api(mvm));

 return iwl_mvm_tvqm_enable_txq(mvm, sta_id, IWL_MAX_TID_COUNT,
           wdg_timeout);
}
