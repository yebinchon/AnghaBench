
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emc_timing {scalar_t__ emc_ctt_term_ctrl; int emc_auto_cal_interval; int emc_cfg; int emc_zcal_cnt_long; int emc_bgbias_ctl0; int emc_sel_dpd_ctrl; } ;
struct tegra_emc {scalar_t__ dram_type; struct emc_timing last_timing; scalar_t__ regs; } ;


 scalar_t__ DRAM_TYPE_DDR3 ;
 scalar_t__ DRAM_TYPE_LPDDR3 ;
 scalar_t__ EMC_AUTO_CAL_INTERVAL ;
 scalar_t__ EMC_BGBIAS_CTL0 ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN ;
 scalar_t__ EMC_CFG ;
 int EMC_CFG_PWR_MASK ;
 scalar_t__ EMC_SEL_DPD_CTRL ;
 scalar_t__ EMC_ZCAL_WAIT_CNT ;
 int emc_seq_update_timing (struct tegra_emc*) ;
 int emc_seq_wait_clkchange (struct tegra_emc*) ;
 int readl (scalar_t__) ;
 struct emc_timing* tegra_emc_find_timing (struct tegra_emc*,unsigned long) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

void tegra_emc_complete_timing_change(struct tegra_emc *emc,
          unsigned long rate)
{
 struct emc_timing *timing = tegra_emc_find_timing(emc, rate);
 struct emc_timing *last = &emc->last_timing;
 u32 val;

 if (!timing)
  return;


 emc_seq_wait_clkchange(emc);


 if (timing->emc_ctt_term_ctrl != last->emc_ctt_term_ctrl)
  writel(timing->emc_auto_cal_interval,
         emc->regs + EMC_AUTO_CAL_INTERVAL);


 if (timing->emc_cfg & EMC_CFG_PWR_MASK)
  writel(timing->emc_cfg, emc->regs + EMC_CFG);


 writel(timing->emc_zcal_cnt_long, emc->regs + EMC_ZCAL_WAIT_CNT);


 if (emc->dram_type == DRAM_TYPE_LPDDR3 &&
     timing->emc_bgbias_ctl0 &
       EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX) {
  val = timing->emc_bgbias_ctl0;
  val |= EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN;
  val |= EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD;
  writel(val, emc->regs + EMC_BGBIAS_CTL0);
 } else {
  if (emc->dram_type == DRAM_TYPE_DDR3 &&
      readl(emc->regs + EMC_BGBIAS_CTL0) !=
        timing->emc_bgbias_ctl0) {
   writel(timing->emc_bgbias_ctl0,
          emc->regs + EMC_BGBIAS_CTL0);
  }

  writel(timing->emc_auto_cal_interval,
         emc->regs + EMC_AUTO_CAL_INTERVAL);
 }


 udelay(2);


 writel(timing->emc_sel_dpd_ctrl, emc->regs + EMC_SEL_DPD_CTRL);
 emc_seq_update_timing(emc);

 emc->last_timing = *timing;
}
