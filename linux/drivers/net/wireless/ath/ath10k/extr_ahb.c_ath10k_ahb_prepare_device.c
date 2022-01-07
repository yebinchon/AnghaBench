
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ATH10K_AHB_GCC_FEPLL_PLL_DIV ;
 int ATH10K_AHB_WIFI_SCRATCH_5_REG ;
 int FW_INDICATOR_ADDRESS ;
 int FW_IND_HOST_READY ;
 int ath10k_ahb_clock_disable (struct ath10k*) ;
 int ath10k_ahb_clock_enable (struct ath10k*) ;
 int ath10k_ahb_gcc_read32 (struct ath10k*,int ) ;
 int ath10k_ahb_halt_chip (struct ath10k*) ;
 int ath10k_ahb_irq_disable (struct ath10k*) ;
 int ath10k_ahb_release_reset (struct ath10k*) ;
 int ath10k_ahb_write32 (struct ath10k*,int ,int ) ;
 int ath10k_err (struct ath10k*,char*) ;
 int ath10k_pci_wait_for_target_init (struct ath10k*) ;

__attribute__((used)) static int ath10k_ahb_prepare_device(struct ath10k *ar)
{
 u32 val;
 int ret;

 ret = ath10k_ahb_clock_enable(ar);
 if (ret) {
  ath10k_err(ar, "failed to enable clocks\n");
  return ret;
 }
 val = ath10k_ahb_gcc_read32(ar, ATH10K_AHB_GCC_FEPLL_PLL_DIV);
 ath10k_ahb_write32(ar, ATH10K_AHB_WIFI_SCRATCH_5_REG, val);

 ret = ath10k_ahb_release_reset(ar);
 if (ret)
  goto err_clk_disable;

 ath10k_ahb_irq_disable(ar);

 ath10k_ahb_write32(ar, FW_INDICATOR_ADDRESS, FW_IND_HOST_READY);

 ret = ath10k_pci_wait_for_target_init(ar);
 if (ret)
  goto err_halt_chip;

 return 0;

err_halt_chip:
 ath10k_ahb_halt_chip(ar);

err_clk_disable:
 ath10k_ahb_clock_disable(ar);

 return ret;
}
