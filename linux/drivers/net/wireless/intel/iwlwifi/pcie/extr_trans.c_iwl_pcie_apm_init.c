
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_trans {int status; TYPE_2__* cfg; TYPE_3__* trans_cfg; } ;
struct TYPE_6__ {scalar_t__ device_family; TYPE_1__* base_params; } ;
struct TYPE_5__ {int apmg_not_supported; scalar_t__ host_interrupt_operation_mode; } ;
struct TYPE_4__ {scalar_t__ pll_cfg; } ;


 int APMG_CLK_EN_REG ;
 int APMG_CLK_VAL_DMA_CLK_RQT ;
 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_L1_ACT_DIS ;
 int APMG_RTC_INT_STT_REG ;
 int APMG_RTC_INT_STT_RFKILL ;
 int CSR50_ANA_PLL_CFG_VAL ;
 int CSR_ANA_PLL_CFG ;
 int CSR_DBG_HPET_MEM_REG ;
 int CSR_DBG_HPET_MEM_REG_VAL ;
 int CSR_GIO_CHICKEN_BITS ;
 int CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ;
 int CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int OSC_CLK ;
 int OSC_CLK_FORCE_CONTROL ;
 int STATUS_DEVICE_ENABLED ;
 int iwl_finish_nic_init (struct iwl_trans*,TYPE_3__*) ;
 int iwl_pcie_apm_config (struct iwl_trans*) ;
 int iwl_read_prph (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph (struct iwl_trans*,int ,int ) ;
 int set_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int iwl_pcie_apm_init(struct iwl_trans *trans)
{
 int ret;

 IWL_DEBUG_INFO(trans, "Init card's basic functions\n");







 if (trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_8000)
  iwl_set_bit(trans, CSR_GIO_CHICKEN_BITS,
       CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);





 iwl_set_bit(trans, CSR_GIO_CHICKEN_BITS,
      CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);


 iwl_set_bit(trans, CSR_DBG_HPET_MEM_REG, CSR_DBG_HPET_MEM_REG_VAL);





 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

 iwl_pcie_apm_config(trans);


 if (trans->trans_cfg->base_params->pll_cfg)
  iwl_set_bit(trans, CSR_ANA_PLL_CFG, CSR50_ANA_PLL_CFG_VAL);

 ret = iwl_finish_nic_init(trans, trans->trans_cfg);
 if (ret)
  return ret;

 if (trans->cfg->host_interrupt_operation_mode) {
  iwl_read_prph(trans, OSC_CLK);
  iwl_read_prph(trans, OSC_CLK);
  iwl_set_bits_prph(trans, OSC_CLK, OSC_CLK_FORCE_CONTROL);
  iwl_read_prph(trans, OSC_CLK);
  iwl_read_prph(trans, OSC_CLK);
 }
 if (!trans->cfg->apmg_not_supported) {
  iwl_write_prph(trans, APMG_CLK_EN_REG,
          APMG_CLK_VAL_DMA_CLK_RQT);
  udelay(20);


  iwl_set_bits_prph(trans, APMG_PCIDEV_STT_REG,
      APMG_PCIDEV_STT_VAL_L1_ACT_DIS);


  iwl_write_prph(trans, APMG_RTC_INT_STT_REG,
          APMG_RTC_INT_STT_RFKILL);
 }

 set_bit(STATUS_DEVICE_ENABLED, &trans->status);

 return 0;
}
