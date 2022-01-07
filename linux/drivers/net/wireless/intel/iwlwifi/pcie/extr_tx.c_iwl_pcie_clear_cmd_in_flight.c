
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_trans_pcie {int cmd_hold_nic_awake; int reg_lock; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_6__ {int flag_mac_access_req; } ;
struct TYPE_5__ {TYPE_3__* csr; TYPE_1__* base_params; } ;
struct TYPE_4__ {int apmg_wake_up_wa; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_trans_pcie_clear_bit (struct iwl_trans*,int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_pcie_clear_cmd_in_flight(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 lockdep_assert_held(&trans_pcie->reg_lock);

 if (!trans->trans_cfg->base_params->apmg_wake_up_wa)
  return;
 if (WARN_ON(!trans_pcie->cmd_hold_nic_awake))
  return;

 trans_pcie->cmd_hold_nic_awake = 0;
 __iwl_trans_pcie_clear_bit(trans, CSR_GP_CNTRL,
       BIT(trans->trans_cfg->csr->flag_mac_access_req));
}
