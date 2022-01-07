
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int opmode_down; int is_down; int mutex; } ;
struct iwl_trans {int dummy; } ;


 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_pcie_apm_init (struct iwl_trans*) ;
 int iwl_pcie_check_hw_rf_kill (struct iwl_trans*) ;
 int iwl_pcie_init_msix (struct iwl_trans_pcie*) ;
 int iwl_pcie_prepare_card_hw (struct iwl_trans*) ;
 int iwl_trans_pcie_clear_persistence_bit (struct iwl_trans*) ;
 int iwl_trans_pcie_sw_reset (struct iwl_trans*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int _iwl_trans_pcie_start_hw(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int err;

 lockdep_assert_held(&trans_pcie->mutex);

 err = iwl_pcie_prepare_card_hw(trans);
 if (err) {
  IWL_ERR(trans, "Error while preparing HW: %d\n", err);
  return err;
 }

 err = iwl_trans_pcie_clear_persistence_bit(trans);
 if (err)
  return err;

 iwl_trans_pcie_sw_reset(trans);

 err = iwl_pcie_apm_init(trans);
 if (err)
  return err;

 iwl_pcie_init_msix(trans_pcie);


 iwl_enable_rfkill_int(trans);

 trans_pcie->opmode_down = 0;


 trans_pcie->is_down = 0;


 iwl_pcie_check_hw_rf_kill(trans);

 return 0;
}
