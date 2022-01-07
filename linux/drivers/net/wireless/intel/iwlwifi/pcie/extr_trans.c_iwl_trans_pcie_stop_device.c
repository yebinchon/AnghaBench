
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int opmode_down; int mutex; } ;
struct iwl_trans {int status; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_RFKILL_OPMODE ;
 int _iwl_trans_pcie_stop_device (struct iwl_trans*) ;
 int iwl_trans_pcie_handle_stop_rfkill (struct iwl_trans*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_trans_pcie_stop_device(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 bool was_in_rfkill;

 mutex_lock(&trans_pcie->mutex);
 trans_pcie->opmode_down = 1;
 was_in_rfkill = test_bit(STATUS_RFKILL_OPMODE, &trans->status);
 _iwl_trans_pcie_stop_device(trans);
 iwl_trans_pcie_handle_stop_rfkill(trans, was_in_rfkill);
 mutex_unlock(&trans_pcie->mutex);
}
