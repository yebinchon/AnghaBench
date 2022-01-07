
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int def_irq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_causes_list {int cause_num; int mask_reg; int addr; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int ARRAY_SIZE (struct iwl_causes_list*) ;
 int CSR_MSIX_IVAR (int ) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int MSIX_NON_AUTO_CLEAR_CAUSE ;
 struct iwl_causes_list* causes_list ;
 struct iwl_causes_list* causes_list_v2 ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write8 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static void iwl_pcie_map_non_rx_causes(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int val = trans_pcie->def_irq | MSIX_NON_AUTO_CLEAR_CAUSE;
 int i, arr_size =
  (trans->trans_cfg->device_family != IWL_DEVICE_FAMILY_22560) ?
  ARRAY_SIZE(causes_list) : ARRAY_SIZE(causes_list_v2);






 for (i = 0; i < arr_size; i++) {
  struct iwl_causes_list *causes =
   (trans->trans_cfg->device_family !=
    IWL_DEVICE_FAMILY_22560) ?
   causes_list : causes_list_v2;

  iwl_write8(trans, CSR_MSIX_IVAR(causes[i].addr), val);
  iwl_clear_bit(trans, causes[i].mask_reg,
         causes[i].cause_num);
 }
}
