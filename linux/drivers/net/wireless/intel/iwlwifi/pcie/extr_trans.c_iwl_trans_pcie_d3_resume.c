
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans_pcie {int sx_complete; int sx_waitq; int msix_enabled; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
typedef enum iwl_d3_status { ____Placeholder_iwl_d3_status } iwl_d3_status ;
struct TYPE_4__ {scalar_t__ device_family; TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_mac_access_req; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_NEVO_RESET ;
 int ETIMEDOUT ;
 int HZ ;
 int IWL_D3_STATUS_ALIVE ;
 int IWL_D3_STATUS_RESET ;
 int IWL_DEBUG_POWER (struct iwl_trans*,char*,int ) ;
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int UREG_DOORBELL_TO_ISR6 ;
 int UREG_DOORBELL_TO_ISR6_RESUME ;
 int WFPM_GP2 ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_finish_nic_init (struct iwl_trans*,TYPE_2__*) ;
 int iwl_pcie_conf_msix_hw (struct iwl_trans_pcie*) ;
 int iwl_pcie_reset_ict (struct iwl_trans*) ;
 int iwl_pcie_rx_init (struct iwl_trans*) ;
 int iwl_pcie_set_pwr (struct iwl_trans*,int) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_read_umac_prph (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_trans_pcie_tx_reset (struct iwl_trans*) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int iwl_trans_pcie_d3_resume(struct iwl_trans *trans,
        enum iwl_d3_status *status,
        bool test, bool reset)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 val;
 int ret;

 if (test) {
  iwl_enable_interrupts(trans);
  *status = IWL_D3_STATUS_ALIVE;
  goto out;
 }

 iwl_set_bit(trans, CSR_GP_CNTRL,
      BIT(trans->trans_cfg->csr->flag_mac_access_req));

 ret = iwl_finish_nic_init(trans, trans->trans_cfg);
 if (ret)
  return ret;
 iwl_pcie_conf_msix_hw(trans_pcie);
 if (!trans_pcie->msix_enabled)
  iwl_pcie_reset_ict(trans);
 iwl_enable_interrupts(trans);

 iwl_pcie_set_pwr(trans, 0);

 if (!reset) {
  iwl_clear_bit(trans, CSR_GP_CNTRL,
         BIT(trans->trans_cfg->csr->flag_mac_access_req));
 } else {
  iwl_trans_pcie_tx_reset(trans);

  ret = iwl_pcie_rx_init(trans);
  if (ret) {
   IWL_ERR(trans,
    "Failed to resume the device (RX reset)\n");
   return ret;
  }
 }

 IWL_DEBUG_POWER(trans, "WFPM value upon resume = 0x%08X\n",
   iwl_read_umac_prph(trans, WFPM_GP2));

 val = iwl_read32(trans, CSR_RESET);
 if (val & CSR_RESET_REG_FLAG_NEVO_RESET)
  *status = IWL_D3_STATUS_RESET;
 else
  *status = IWL_D3_STATUS_ALIVE;

out:
 if (*status == IWL_D3_STATUS_ALIVE &&
     trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
  trans_pcie->sx_complete = 0;
  iwl_write_umac_prph(trans, UREG_DOORBELL_TO_ISR6,
        UREG_DOORBELL_TO_ISR6_RESUME);

  ret = wait_event_timeout(trans_pcie->sx_waitq,
      trans_pcie->sx_complete, 2 * HZ);



  trans_pcie->sx_complete = 0;

  if (!ret) {
   IWL_ERR(trans, "Timeout exiting D3\n");
   return -ETIMEDOUT;
  }
 }
 return 0;
}
