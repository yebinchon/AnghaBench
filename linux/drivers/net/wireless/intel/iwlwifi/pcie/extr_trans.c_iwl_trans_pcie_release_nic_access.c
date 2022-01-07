
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int reg_lock; scalar_t__ cmd_hold_nic_awake; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_mac_access_req; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int __acquire (int *) ;
 int __iwl_trans_pcie_clear_bit (struct iwl_trans*,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iwl_trans_pcie_release_nic_access(struct iwl_trans *trans,
           unsigned long *flags)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 lockdep_assert_held(&trans_pcie->reg_lock);





 __acquire(&trans_pcie->reg_lock);

 if (trans_pcie->cmd_hold_nic_awake)
  goto out;

 __iwl_trans_pcie_clear_bit(trans, CSR_GP_CNTRL,
       BIT(trans->trans_cfg->csr->flag_mac_access_req));






out:
 spin_unlock_irqrestore(&trans_pcie->reg_lock, *flags);
}
