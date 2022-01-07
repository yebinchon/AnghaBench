
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int irq_lock; } ;
struct iwl_trans {TYPE_2__* trans_cfg; int op_mode; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_enable; } ;


 int CSR_MAC_SHADOW_REG_CTRL ;
 int ENOMEM ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_op_mode_nic_config (int ) ;
 int iwl_pcie_apm_init (struct iwl_trans*) ;
 int iwl_pcie_rx_init (struct iwl_trans*) ;
 int iwl_pcie_set_pwr (struct iwl_trans*,int) ;
 scalar_t__ iwl_pcie_tx_init (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iwl_pcie_nic_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;


 spin_lock(&trans_pcie->irq_lock);
 ret = iwl_pcie_apm_init(trans);
 spin_unlock(&trans_pcie->irq_lock);

 if (ret)
  return ret;

 iwl_pcie_set_pwr(trans, 0);

 iwl_op_mode_nic_config(trans->op_mode);


 iwl_pcie_rx_init(trans);


 if (iwl_pcie_tx_init(trans))
  return -ENOMEM;

 if (trans->trans_cfg->base_params->shadow_reg_enable) {

  iwl_set_bit(trans, CSR_MAC_SHADOW_REG_CTRL, 0x800FFFFF);
  IWL_DEBUG_INFO(trans, "Enabling shadow registers in device\n");
 }

 return 0;
}
