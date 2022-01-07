
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int debug_rfkill; int mutex; } ;
struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline bool iwl_is_rfkill_set(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 lockdep_assert_held(&trans_pcie->mutex);

 if (trans_pcie->debug_rfkill == 1)
  return 1;

 return !(iwl_read32(trans, CSR_GP_CNTRL) &
  CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW);
}
