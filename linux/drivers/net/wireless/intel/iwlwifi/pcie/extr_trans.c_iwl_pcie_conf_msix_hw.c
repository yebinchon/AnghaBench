
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int msix_enabled; struct iwl_trans* trans; } ;
struct iwl_trans {int status; TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ mq_rx_supported; } ;


 int STATUS_DEVICE_ENABLED ;
 int UREG_CHICK ;
 int UREG_CHICK_MSIX_ENABLE ;
 int UREG_CHICK_MSI_ENABLE ;
 int iwl_pcie_map_non_rx_causes (struct iwl_trans*) ;
 int iwl_pcie_map_rx_causes (struct iwl_trans*) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void iwl_pcie_conf_msix_hw(struct iwl_trans_pcie *trans_pcie)
{
 struct iwl_trans *trans = trans_pcie->trans;

 if (!trans_pcie->msix_enabled) {
  if (trans->trans_cfg->mq_rx_supported &&
      test_bit(STATUS_DEVICE_ENABLED, &trans->status))
   iwl_write_umac_prph(trans, UREG_CHICK,
         UREG_CHICK_MSI_ENABLE);
  return;
 }





 if (test_bit(STATUS_DEVICE_ENABLED, &trans->status))
  iwl_write_umac_prph(trans, UREG_CHICK, UREG_CHICK_MSIX_ENABLE);
 iwl_pcie_map_rx_causes(trans);

 iwl_pcie_map_non_rx_causes(trans);
}
