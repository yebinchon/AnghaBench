
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_init_done; } ;


 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_PERSIST_DIS ;
 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_XTAL_ON ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_PERSIST_MODE ;
 int CSR_MONITOR_CFG_REG ;
 int CSR_MONITOR_XTAL_RESOURCES ;
 int SHR_APMG_DL_CFG_DL_CLOCK_POWER_UP ;
 int SHR_APMG_DL_CFG_REG ;
 int SHR_APMG_GP1_CHICKEN_BIT_SELECT ;
 int SHR_APMG_GP1_REG ;
 int SHR_APMG_GP1_WF_XTAL_LP_EN ;
 int SHR_APMG_XTAL_CFG_REG ;
 int SHR_APMG_XTAL_CFG_XTAL_ON_REQ ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_trans_pcie_clear_bit (struct iwl_trans*,int ,int ) ;
 int __iwl_trans_pcie_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_clear_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_finish_nic_init (struct iwl_trans*,TYPE_2__*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_trans_pcie_read_shr (struct iwl_trans*,int ) ;
 int iwl_trans_pcie_sw_reset (struct iwl_trans*) ;
 int iwl_trans_pcie_write_shr (struct iwl_trans*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void iwl_pcie_apm_lp_xtal_enable(struct iwl_trans *trans)
{
 int ret;
 u32 apmg_gp1_reg;
 u32 apmg_xtal_cfg_reg;
 u32 dl_cfg_reg;


 __iwl_trans_pcie_set_bit(trans, CSR_GP_CNTRL,
     CSR_GP_CNTRL_REG_FLAG_XTAL_ON);

 iwl_trans_pcie_sw_reset(trans);

 ret = iwl_finish_nic_init(trans, trans->trans_cfg);
 if (WARN_ON(ret)) {

  __iwl_trans_pcie_clear_bit(trans, CSR_GP_CNTRL,
        CSR_GP_CNTRL_REG_FLAG_XTAL_ON);
  return;
 }





 iwl_clear_bits_prph(trans, APMG_PCIDEV_STT_REG,
        APMG_PCIDEV_STT_VAL_PERSIST_DIS);





 apmg_xtal_cfg_reg = iwl_trans_pcie_read_shr(trans,
          SHR_APMG_XTAL_CFG_REG);
 iwl_trans_pcie_write_shr(trans, SHR_APMG_XTAL_CFG_REG,
     apmg_xtal_cfg_reg |
     SHR_APMG_XTAL_CFG_XTAL_ON_REQ);

 iwl_trans_pcie_sw_reset(trans);


 apmg_gp1_reg = iwl_trans_pcie_read_shr(trans, SHR_APMG_GP1_REG);
 iwl_trans_pcie_write_shr(trans, SHR_APMG_GP1_REG, apmg_gp1_reg |
     SHR_APMG_GP1_WF_XTAL_LP_EN |
     SHR_APMG_GP1_CHICKEN_BIT_SELECT);


 dl_cfg_reg = iwl_trans_pcie_read_shr(trans, SHR_APMG_DL_CFG_REG);
 iwl_trans_pcie_write_shr(trans, SHR_APMG_DL_CFG_REG, dl_cfg_reg &
     ~SHR_APMG_DL_CFG_DL_CLOCK_POWER_UP);





 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_PERSIST_MODE);





 iwl_clear_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_init_done));


 __iwl_trans_pcie_set_bit(trans, CSR_MONITOR_CFG_REG,
     CSR_MONITOR_XTAL_RESOURCES);


 __iwl_trans_pcie_clear_bit(trans, CSR_GP_CNTRL,
       CSR_GP_CNTRL_REG_FLAG_XTAL_ON);
 udelay(10);


 iwl_trans_pcie_write_shr(trans, SHR_APMG_XTAL_CFG_REG,
     apmg_xtal_cfg_reg &
     ~SHR_APMG_XTAL_CFG_XTAL_ON_REQ);
}
