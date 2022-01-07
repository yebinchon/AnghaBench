
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int is_down; int mutex; } ;
struct iwl_trans {int status; TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_mac_access_req; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_DEVICE_ENABLED ;
 int STATUS_INT_ENABLED ;
 int STATUS_SYNC_HCMD_ACTIVE ;
 int STATUS_TPOWER_PMI ;
 int clear_bit (int ,int *) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_rfkill_int (struct iwl_trans*) ;
 int iwl_pcie_conf_msix_hw (struct iwl_trans_pcie*) ;
 int iwl_pcie_ctxt_info_free (struct iwl_trans*) ;
 int iwl_pcie_ctxt_info_free_paging (struct iwl_trans*) ;
 int iwl_pcie_ctxt_info_gen3_free (struct iwl_trans*) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int iwl_pcie_gen2_apm_stop (struct iwl_trans*,int) ;
 int iwl_pcie_gen2_tx_stop (struct iwl_trans*) ;
 int iwl_pcie_prepare_card_hw (struct iwl_trans*) ;
 int iwl_pcie_rx_stop (struct iwl_trans*) ;
 int iwl_trans_sw_reset (struct iwl_trans*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void _iwl_trans_pcie_gen2_stop_device(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 lockdep_assert_held(&trans_pcie->mutex);

 if (trans_pcie->is_down)
  return;

 trans_pcie->is_down = 1;


 iwl_disable_interrupts(trans);


 iwl_pcie_disable_ict(trans);
 if (test_and_clear_bit(STATUS_DEVICE_ENABLED, &trans->status)) {
  IWL_DEBUG_INFO(trans,
          "DEVICE_ENABLED bit was set and is now cleared\n");
  iwl_pcie_gen2_tx_stop(trans);
  iwl_pcie_rx_stop(trans);
 }

 iwl_pcie_ctxt_info_free_paging(trans);
 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
  iwl_pcie_ctxt_info_gen3_free(trans);
 else
  iwl_pcie_ctxt_info_free(trans);


 iwl_clear_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_mac_access_req));


 iwl_pcie_gen2_apm_stop(trans, 0);

 iwl_trans_sw_reset(trans);
 iwl_pcie_conf_msix_hw(trans_pcie);
 iwl_disable_interrupts(trans);


 clear_bit(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
 clear_bit(STATUS_INT_ENABLED, &trans->status);
 clear_bit(STATUS_TPOWER_PMI, &trans->status);





 iwl_enable_rfkill_int(trans);


 iwl_pcie_prepare_card_hw(trans);
}
