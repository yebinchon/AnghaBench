
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int cmd_queue; int irq_lock; } ;
struct iwl_trans {int op_mode; TYPE_1__* cfg; } ;
struct TYPE_2__ {int min_txq_size; } ;


 int CSR_MAC_SHADOW_REG_CTRL ;
 int ENOMEM ;
 int IWL_CMD_QUEUE_SIZE ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_op_mode_nic_config (int ) ;
 int iwl_pcie_gen2_apm_init (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_gen2_rx_init (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_gen2_tx_init (struct iwl_trans*,int ,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,int) ;
 int max_t (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int u32 ;

__attribute__((used)) static int iwl_pcie_gen2_nic_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int queue_size = max_t(u32, IWL_CMD_QUEUE_SIZE,
          trans->cfg->min_txq_size);


 spin_lock(&trans_pcie->irq_lock);
 iwl_pcie_gen2_apm_init(trans);
 spin_unlock(&trans_pcie->irq_lock);

 iwl_op_mode_nic_config(trans->op_mode);


 if (iwl_pcie_gen2_rx_init(trans))
  return -ENOMEM;


 if (iwl_pcie_gen2_tx_init(trans, trans_pcie->cmd_queue, queue_size))
  return -ENOMEM;


 iwl_set_bit(trans, CSR_MAC_SHADOW_REG_CTRL, 0x800FFFFF);
 IWL_DEBUG_INFO(trans, "Enabling shadow registers in device\n");

 return 0;
}
