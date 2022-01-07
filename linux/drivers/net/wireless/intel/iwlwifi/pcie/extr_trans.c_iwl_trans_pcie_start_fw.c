
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int mutex; scalar_t__ is_down; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct fw_img {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int CSR_INT ;
 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ;
 int CSR_UCODE_DRV_GP1_CLR ;
 int CSR_UCODE_SW_BIT_RFKILL ;
 int EIO ;
 int ERFKILL ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_fw_load_int (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_pcie_check_hw_rf_kill (struct iwl_trans*) ;
 int iwl_pcie_load_given_ucode (struct iwl_trans*,struct fw_img const*) ;
 int iwl_pcie_load_given_ucode_8000 (struct iwl_trans*,struct fw_img const*) ;
 int iwl_pcie_nic_init (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_prepare_card_hw (struct iwl_trans*) ;
 int iwl_pcie_synchronize_irqs (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_trans_pcie_start_fw(struct iwl_trans *trans,
       const struct fw_img *fw, bool run_in_rfkill)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 bool hw_rfkill;
 int ret;


 if (iwl_pcie_prepare_card_hw(trans)) {
  IWL_WARN(trans, "Exit HW not ready\n");
  ret = -EIO;
  goto out;
 }

 iwl_enable_rfkill_int(trans);

 iwl_write32(trans, CSR_INT, 0xFFFFFFFF);






 iwl_disable_interrupts(trans);


 iwl_pcie_synchronize_irqs(trans);

 mutex_lock(&trans_pcie->mutex);


 hw_rfkill = iwl_pcie_check_hw_rf_kill(trans);
 if (hw_rfkill && !run_in_rfkill) {
  ret = -ERFKILL;
  goto out;
 }


 if (trans_pcie->is_down) {
  IWL_WARN(trans,
    "Can't start_fw since the HW hasn't been started\n");
  ret = -EIO;
  goto out;
 }


 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR,
      CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);


 iwl_write32(trans, CSR_INT, 0xFFFFFFFF);

 ret = iwl_pcie_nic_init(trans);
 if (ret) {
  IWL_ERR(trans, "Unable to init nic\n");
  goto out;
 }
 iwl_enable_fw_load_int(trans);


 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
 iwl_write32(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);


 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_8000)
  ret = iwl_pcie_load_given_ucode_8000(trans, fw);
 else
  ret = iwl_pcie_load_given_ucode(trans, fw);


 hw_rfkill = iwl_pcie_check_hw_rf_kill(trans);
 if (hw_rfkill && !run_in_rfkill)
  ret = -ERFKILL;

out:
 mutex_unlock(&trans_pcie->mutex);
 return ret;
}
