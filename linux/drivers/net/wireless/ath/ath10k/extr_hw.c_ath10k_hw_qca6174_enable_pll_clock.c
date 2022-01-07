
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_hw_params {int target_cpu_freq; struct ath10k_hw_clk_params* hw_clk; } ;
struct ath10k_hw_clk_params {int rnfrac; int outdiv; int settle_time; int refdiv; int div; } ;
struct ath10k {TYPE_1__* regs; struct ath10k_hw_params hw_params; } ;
typedef int mem_val ;
struct TYPE_2__ {scalar_t__ core_clk_div_address; scalar_t__ cpu_pll_init_address; scalar_t__ cpu_speed_address; } ;


 int ATH10K_HW_REFCLK_COUNT ;
 int BB_PLL_CONFIG_FRAC ;
 int BB_PLL_CONFIG_FRAC_MASK ;
 int BB_PLL_CONFIG_OFFSET ;
 int BB_PLL_CONFIG_OUTDIV ;
 int BB_PLL_CONFIG_OUTDIV_MASK ;
 int EFUSE_OFFSET ;
 int EFUSE_XTAL_SEL ;
 int EINVAL ;
 int MS (int,int ) ;
 int RTC_SOC_BASE_ADDRESS ;
 int RTC_SYNC_STATUS_OFFSET ;
 int RTC_SYNC_STATUS_PLL_CHANGING ;
 int RTC_WMAC_BASE_ADDRESS ;
 int SM (int,int ) ;
 int SOC_CORE_CLK_CTRL_DIV ;
 int SOC_CORE_CLK_CTRL_DIV_MASK ;
 int SOC_CORE_CLK_CTRL_OFFSET ;
 int SOC_CPU_CLOCK_OFFSET ;
 int SOC_CPU_CLOCK_STANDARD ;
 int SOC_CPU_CLOCK_STANDARD_MASK ;
 int WLAN_PLL_CONTROL_BYPASS ;
 int WLAN_PLL_CONTROL_BYPASS_MASK ;
 int WLAN_PLL_CONTROL_DIV ;
 int WLAN_PLL_CONTROL_NOPWD ;
 int WLAN_PLL_CONTROL_NOPWD_MASK ;
 int WLAN_PLL_CONTROL_OFFSET ;
 int WLAN_PLL_CONTROL_REFDIV ;
 int WLAN_PLL_SETTLE_OFFSET ;
 int WLAN_PLL_SETTLE_TIME ;
 int WLAN_PLL_SETTLE_TIME_MASK ;
 int ath10k_bmi_read_soc_reg (struct ath10k*,int,int*) ;
 int ath10k_bmi_write_memory (struct ath10k*,int,int*,int) ;
 int ath10k_bmi_write_soc_reg (struct ath10k*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int ath10k_hw_qca6174_enable_pll_clock(struct ath10k *ar)
{
 int ret, wait_limit;
 u32 clk_div_addr, pll_init_addr, speed_addr;
 u32 addr, reg_val, mem_val;
 struct ath10k_hw_params *hw;
 const struct ath10k_hw_clk_params *hw_clk;

 hw = &ar->hw_params;

 if (ar->regs->core_clk_div_address == 0 ||
     ar->regs->cpu_pll_init_address == 0 ||
     ar->regs->cpu_speed_address == 0)
  return -EINVAL;

 clk_div_addr = ar->regs->core_clk_div_address;
 pll_init_addr = ar->regs->cpu_pll_init_address;
 speed_addr = ar->regs->cpu_speed_address;


 addr = (RTC_SOC_BASE_ADDRESS | EFUSE_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;


 if (MS(reg_val, EFUSE_XTAL_SEL) > ATH10K_HW_REFCLK_COUNT)
  return -EINVAL;

 hw_clk = &hw->hw_clk[MS(reg_val, EFUSE_XTAL_SEL)];


 addr = (RTC_SOC_BASE_ADDRESS | BB_PLL_CONFIG_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~(BB_PLL_CONFIG_FRAC_MASK | BB_PLL_CONFIG_OUTDIV_MASK);
 reg_val |= (SM(hw_clk->rnfrac, BB_PLL_CONFIG_FRAC) |
      SM(hw_clk->outdiv, BB_PLL_CONFIG_OUTDIV));
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 addr = (RTC_WMAC_BASE_ADDRESS | WLAN_PLL_SETTLE_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~WLAN_PLL_SETTLE_TIME_MASK;
 reg_val |= SM(hw_clk->settle_time, WLAN_PLL_SETTLE_TIME);
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 addr = (RTC_SOC_BASE_ADDRESS | SOC_CORE_CLK_CTRL_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~SOC_CORE_CLK_CTRL_DIV_MASK;
 reg_val |= SM(1, SOC_CORE_CLK_CTRL_DIV);
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 mem_val = 1;
 ret = ath10k_bmi_write_memory(ar, clk_div_addr, &mem_val,
          sizeof(mem_val));
 if (ret)
  return -EINVAL;


 addr = (RTC_WMAC_BASE_ADDRESS | WLAN_PLL_CONTROL_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val |= (SM(hw_clk->refdiv, WLAN_PLL_CONTROL_REFDIV) |
      SM(hw_clk->div, WLAN_PLL_CONTROL_DIV) |
      SM(1, WLAN_PLL_CONTROL_NOPWD));
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 wait_limit = 100000;
 addr = (RTC_WMAC_BASE_ADDRESS | RTC_SYNC_STATUS_OFFSET);
 do {
  ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
  if (ret)
   return -EINVAL;

  if (!MS(reg_val, RTC_SYNC_STATUS_PLL_CHANGING))
   break;

  wait_limit--;
  udelay(10);

 } while (wait_limit > 0);

 if (MS(reg_val, RTC_SYNC_STATUS_PLL_CHANGING))
  return -EINVAL;


 addr = (RTC_WMAC_BASE_ADDRESS | WLAN_PLL_CONTROL_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~WLAN_PLL_CONTROL_BYPASS_MASK;
 reg_val |= SM(0, WLAN_PLL_CONTROL_BYPASS);
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 wait_limit = 100000;
 addr = (RTC_WMAC_BASE_ADDRESS | RTC_SYNC_STATUS_OFFSET);
 do {
  ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
  if (ret)
   return -EINVAL;

  if (!MS(reg_val, RTC_SYNC_STATUS_PLL_CHANGING))
   break;

  wait_limit--;
  udelay(10);

 } while (wait_limit > 0);

 if (MS(reg_val, RTC_SYNC_STATUS_PLL_CHANGING))
  return -EINVAL;


 addr = (RTC_SOC_BASE_ADDRESS | SOC_CPU_CLOCK_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~SOC_CPU_CLOCK_STANDARD_MASK;
 reg_val |= SM(1, SOC_CPU_CLOCK_STANDARD);
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 addr = (RTC_WMAC_BASE_ADDRESS | WLAN_PLL_CONTROL_OFFSET);
 ret = ath10k_bmi_read_soc_reg(ar, addr, &reg_val);
 if (ret)
  return -EINVAL;

 reg_val &= ~WLAN_PLL_CONTROL_NOPWD_MASK;
 ret = ath10k_bmi_write_soc_reg(ar, addr, reg_val);
 if (ret)
  return -EINVAL;


 mem_val = 1;
 ret = ath10k_bmi_write_memory(ar, pll_init_addr, &mem_val,
          sizeof(mem_val));
 if (ret)
  return -EINVAL;


 ret = ath10k_bmi_write_memory(ar, speed_addr, &hw->target_cpu_freq,
          sizeof(hw->target_cpu_freq));
 if (ret)
  return -EINVAL;

 return 0;
}
