
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct il_priv {TYPE_1__* cfg; int pci_dev; } ;
struct TYPE_2__ {scalar_t__ use_bsm; scalar_t__ pll_cfg_val; scalar_t__ set_l0s; } ;


 int APMG_CLK_EN_REG ;
 int APMG_CLK_VAL_BSM_CLK_RQT ;
 int APMG_CLK_VAL_DMA_CLK_RQT ;
 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_L1_ACT_DIS ;
 int CSR_ANA_PLL_CFG ;
 int CSR_DBG_HPET_MEM_REG ;
 scalar_t__ CSR_DBG_HPET_MEM_REG_VAL ;
 int CSR_GIO_CHICKEN_BITS ;
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ;
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ;
 int CSR_GIO_REG ;
 scalar_t__ CSR_GIO_REG_VAL_L0S_ENABLED ;
 int CSR_GP_CNTRL ;
 scalar_t__ CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ;
 int CSR_HW_IF_CONFIG_REG ;
 scalar_t__ CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ;
 int D_INFO (char*) ;
 int D_POWER (char*) ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int il_clear_bit (struct il_priv*,int ,scalar_t__) ;
 int il_set_bit (struct il_priv*,int ,scalar_t__) ;
 int il_set_bits_prph (struct il_priv*,int ,int ) ;
 int il_wr_prph (struct il_priv*,int ,int) ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int udelay (int) ;

int
il_apm_init(struct il_priv *il)
{
 int ret = 0;
 u16 lctl;

 D_INFO("Init card's basic functions\n");







 il_set_bit(il, CSR_GIO_CHICKEN_BITS,
     CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);





 il_set_bit(il, CSR_GIO_CHICKEN_BITS,
     CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);


 il_set_bit(il, CSR_DBG_HPET_MEM_REG, CSR_DBG_HPET_MEM_REG_VAL);






 il_set_bit(il, CSR_HW_IF_CONFIG_REG,
     CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);
 if (il->cfg->set_l0s) {
  pcie_capability_read_word(il->pci_dev, PCI_EXP_LNKCTL, &lctl);
  if (lctl & PCI_EXP_LNKCTL_ASPM_L1) {

   il_set_bit(il, CSR_GIO_REG,
       CSR_GIO_REG_VAL_L0S_ENABLED);
   D_POWER("L1 Enabled; Disabling L0S\n");
  } else {

   il_clear_bit(il, CSR_GIO_REG,
         CSR_GIO_REG_VAL_L0S_ENABLED);
   D_POWER("L1 Disabled; Enabling L0S\n");
  }
 }


 if (il->cfg->pll_cfg_val)
  il_set_bit(il, CSR_ANA_PLL_CFG,
      il->cfg->pll_cfg_val);





 il_set_bit(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_INIT_DONE);






 ret =
     _il_poll_bit(il, CSR_GP_CNTRL,
    CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY,
    CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, 25000);
 if (ret < 0) {
  D_INFO("Failed to init the card\n");
  goto out;
 }
 if (il->cfg->use_bsm)
  il_wr_prph(il, APMG_CLK_EN_REG,
      APMG_CLK_VAL_DMA_CLK_RQT | APMG_CLK_VAL_BSM_CLK_RQT);
 else
  il_wr_prph(il, APMG_CLK_EN_REG, APMG_CLK_VAL_DMA_CLK_RQT);
 udelay(20);


 il_set_bits_prph(il, APMG_PCIDEV_STT_REG,
    APMG_PCIDEV_STT_VAL_L1_ACT_DIS);

out:
 return ret;
}
