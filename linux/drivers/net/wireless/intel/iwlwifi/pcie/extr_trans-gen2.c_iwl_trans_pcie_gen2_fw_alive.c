
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int mutex; int queue_used; int queue_stopped; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_check_hw_rf_kill (struct iwl_trans*) ;
 int iwl_pcie_ctxt_info_free (struct iwl_trans*) ;
 int iwl_pcie_reset_ict (struct iwl_trans*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iwl_trans_pcie_gen2_fw_alive(struct iwl_trans *trans, u32 scd_addr)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 iwl_pcie_reset_ict(trans);


 memset(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
 memset(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));




 iwl_pcie_ctxt_info_free(trans);





 iwl_enable_interrupts(trans);
 mutex_lock(&trans_pcie->mutex);
 iwl_pcie_check_hw_rf_kill(trans);
 mutex_unlock(&trans_pcie->mutex);
}
