
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int mutex; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_apm_stop (struct iwl_trans*,int) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int iwl_pcie_synchronize_irqs (struct iwl_trans*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_trans_pcie_op_mode_leave(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 mutex_lock(&trans_pcie->mutex);


 iwl_disable_interrupts(trans);

 iwl_pcie_apm_stop(trans, 1);

 iwl_disable_interrupts(trans);

 iwl_pcie_disable_ict(trans);

 mutex_unlock(&trans_pcie->mutex);

 iwl_pcie_synchronize_irqs(trans);
}
