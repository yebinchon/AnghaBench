
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {int status; TYPE_2__* trans_cfg; TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; } ;
struct TYPE_3__ {scalar_t__ integrated; } ;


 int CSR_DBG_HPET_MEM_REG ;
 int CSR_DBG_HPET_MEM_REG_VAL ;
 int CSR_GIO_CHICKEN_BITS ;
 int CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22000 ;
 int STATUS_DEVICE_ENABLED ;
 int iwl_finish_nic_init (struct iwl_trans*,TYPE_2__*) ;
 int iwl_pcie_apm_config (struct iwl_trans*) ;
 int iwl_pcie_gen2_force_power_gating (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int set_bit (int ,int *) ;

int iwl_pcie_gen2_apm_init(struct iwl_trans *trans)
{
 int ret = 0;

 IWL_DEBUG_INFO(trans, "Init card's basic functions\n");
 iwl_set_bit(trans, CSR_GIO_CHICKEN_BITS,
      CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);


 iwl_set_bit(trans, CSR_DBG_HPET_MEM_REG, CSR_DBG_HPET_MEM_REG_VAL);





 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

 iwl_pcie_apm_config(trans);

 if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_22000 &&
     trans->cfg->integrated) {
  ret = iwl_pcie_gen2_force_power_gating(trans);
  if (ret)
   return ret;
 }

 ret = iwl_finish_nic_init(trans, trans->trans_cfg);
 if (ret)
  return ret;

 set_bit(STATUS_DEVICE_ENABLED, &trans->status);

 return 0;
}
