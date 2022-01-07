
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emc_timing {int emc_mode_1; int emc_bgbias_ctl0; int emc_xm2dqspadctrl2; int emc_ctt_term_ctrl; int* emc_burst_data; int emc_zcal_interval; int emc_cfg; int emc_auto_cal_config2; int emc_auto_cal_config3; int emc_auto_cal_config; int emc_mrs_wait_cnt; int emc_cfg_2; int emc_mode_2; int emc_mode_reset; int emc_mode_4; int rate; } ;
struct tegra_emc {scalar_t__ dram_type; int dram_num; scalar_t__ regs; int mc; struct emc_timing last_timing; } ;
typedef enum emc_dll_change { ____Placeholder_emc_dll_change } emc_dll_change ;


 unsigned int ARRAY_SIZE (int*) ;
 int DLL_CHANGE_NONE ;
 int DLL_CHANGE_OFF ;
 int DLL_CHANGE_ON ;
 scalar_t__ DRAM_TYPE_DDR3 ;
 scalar_t__ EMC_AUTO_CAL_CONFIG ;
 scalar_t__ EMC_AUTO_CAL_CONFIG2 ;
 scalar_t__ EMC_AUTO_CAL_CONFIG3 ;
 int EMC_AUTO_CAL_CONFIG_AUTO_CAL_START ;
 scalar_t__ EMC_BGBIAS_CTL0 ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX ;
 int EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN ;
 scalar_t__ EMC_CCFIFO_STATUS ;
 scalar_t__ EMC_CFG ;
 scalar_t__ EMC_CFG_2 ;
 int EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR ;
 int EMC_CFG_POWER_FEATURES_MASK ;
 int EMC_CFG_PWR_MASK ;
 scalar_t__ EMC_CTT_TERM_CTRL ;
 int EMC_DRAM_DEV_SEL (int) ;
 scalar_t__ EMC_EMRS ;
 scalar_t__ EMC_EMRS2 ;
 scalar_t__ EMC_INTSTATUS ;
 int EMC_INTSTATUS_CLKCHANGE_COMPLETE ;
 int EMC_MODE_SET_DLL_RESET ;
 int EMC_MODE_SET_LONG_CNT ;
 scalar_t__ EMC_MRS ;
 scalar_t__ EMC_MRS_WAIT_CNT ;
 int EMC_MRS_WAIT_CNT_LONG_WAIT_MASK ;
 int EMC_MRS_WAIT_CNT_LONG_WAIT_SHIFT ;
 int EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK ;
 int EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT ;
 scalar_t__ EMC_MRW ;
 scalar_t__ EMC_MRW2 ;
 scalar_t__ EMC_MRW4 ;
 scalar_t__ EMC_REFCTRL ;
 int EMC_REFCTRL_DEV_SEL (int) ;
 int EMC_REFCTRL_ENABLE ;
 scalar_t__ EMC_SELF_REF ;
 int EMC_SELF_REF_CMD_ENABLED ;
 scalar_t__ EMC_SEL_DPD_CTRL ;
 int EMC_SEL_DPD_CTRL_DDR3_MASK ;
 int EMC_SEL_DPD_CTRL_MASK ;
 scalar_t__ EMC_STALL_THEN_EXE_AFTER_CLKCHANGE ;
 scalar_t__ EMC_XM2DQSPADCTRL2 ;
 int EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE ;
 int EMC_XM2DQSPADCTRL2_VREF_ENABLE ;
 scalar_t__ EMC_ZCAL_INTERVAL ;
 scalar_t__ EMC_ZQ_CAL ;
 int EMC_ZQ_CAL_LONG_CMD_DEV0 ;
 int EMC_ZQ_CAL_LONG_CMD_DEV1 ;
 int ENOENT ;
 scalar_t__* emc_burst_regs ;
 int emc_ccfifo_writel (struct tegra_emc*,int,scalar_t__) ;
 int emc_seq_disable_auto_cal (struct tegra_emc*) ;
 int emc_seq_update_timing (struct tegra_emc*) ;
 int readl (scalar_t__) ;
 struct emc_timing* tegra_emc_find_timing (struct tegra_emc*,unsigned long) ;
 int tegra_mc_write_emem_configuration (int ,int ) ;
 int udelay (unsigned int) ;
 int writel (int,scalar_t__) ;

int tegra_emc_prepare_timing_change(struct tegra_emc *emc,
        unsigned long rate)
{
 struct emc_timing *timing = tegra_emc_find_timing(emc, rate);
 struct emc_timing *last = &emc->last_timing;
 enum emc_dll_change dll_change;
 unsigned int pre_wait = 0;
 u32 val, val2, mask;
 bool update = 0;
 unsigned int i;

 if (!timing)
  return -ENOENT;

 if ((last->emc_mode_1 & 0x1) == (timing->emc_mode_1 & 0x1))
  dll_change = DLL_CHANGE_NONE;
 else if (timing->emc_mode_1 & 0x1)
  dll_change = DLL_CHANGE_ON;
 else
  dll_change = DLL_CHANGE_OFF;


 writel(EMC_INTSTATUS_CLKCHANGE_COMPLETE, emc->regs + EMC_INTSTATUS);


 val = readl(emc->regs + EMC_CFG);
 if (val & EMC_CFG_PWR_MASK) {
  val &= ~EMC_CFG_POWER_FEATURES_MASK;
  writel(val, emc->regs + EMC_CFG);

  pre_wait = 5;
 }


 if (emc->dram_type == DRAM_TYPE_DDR3)
  mask = EMC_SEL_DPD_CTRL_DDR3_MASK;
 else
  mask = EMC_SEL_DPD_CTRL_MASK;

 val = readl(emc->regs + EMC_SEL_DPD_CTRL);
 if (val & mask) {
  val &= ~mask;
  writel(val, emc->regs + EMC_SEL_DPD_CTRL);
 }


 val = readl(emc->regs + EMC_BGBIAS_CTL0);
 val2 = last->emc_bgbias_ctl0;
 if (!(timing->emc_bgbias_ctl0 &
       EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX) &&
     (val & EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX)) {
  val2 &= ~EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX;
  update = 1;
 }

 if ((val & EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD) ||
     (val & EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN)) {
  update = 1;
 }

 if (update) {
  writel(val2, emc->regs + EMC_BGBIAS_CTL0);
  if (pre_wait < 5)
   pre_wait = 5;
 }

 update = 0;
 val = readl(emc->regs + EMC_XM2DQSPADCTRL2);
 if (timing->emc_xm2dqspadctrl2 & EMC_XM2DQSPADCTRL2_VREF_ENABLE &&
     !(val & EMC_XM2DQSPADCTRL2_VREF_ENABLE)) {
  val |= EMC_XM2DQSPADCTRL2_VREF_ENABLE;
  update = 1;
 }

 if (timing->emc_xm2dqspadctrl2 & EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE &&
     !(val & EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE)) {
  val |= EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE;
  update = 1;
 }

 if (update) {
  writel(val, emc->regs + EMC_XM2DQSPADCTRL2);
  if (pre_wait < 30)
   pre_wait = 30;
 }


 if (pre_wait) {
  emc_seq_update_timing(emc);
  udelay(pre_wait);
 }


 if (last->emc_ctt_term_ctrl != timing->emc_ctt_term_ctrl) {
  emc_seq_disable_auto_cal(emc);
  writel(timing->emc_ctt_term_ctrl,
         emc->regs + EMC_CTT_TERM_CTRL);
  emc_seq_update_timing(emc);
 }


 for (i = 0; i < ARRAY_SIZE(timing->emc_burst_data); ++i)
  writel(timing->emc_burst_data[i],
         emc->regs + emc_burst_regs[i]);

 writel(timing->emc_xm2dqspadctrl2, emc->regs + EMC_XM2DQSPADCTRL2);
 writel(timing->emc_zcal_interval, emc->regs + EMC_ZCAL_INTERVAL);

 tegra_mc_write_emem_configuration(emc->mc, timing->rate);

 val = timing->emc_cfg & ~EMC_CFG_POWER_FEATURES_MASK;
 emc_ccfifo_writel(emc, val, EMC_CFG);


 if (timing->emc_auto_cal_config2 != last->emc_auto_cal_config2)
  emc_ccfifo_writel(emc, timing->emc_auto_cal_config2,
      EMC_AUTO_CAL_CONFIG2);

 if (timing->emc_auto_cal_config3 != last->emc_auto_cal_config3)
  emc_ccfifo_writel(emc, timing->emc_auto_cal_config3,
      EMC_AUTO_CAL_CONFIG3);

 if (timing->emc_auto_cal_config != last->emc_auto_cal_config) {
  val = timing->emc_auto_cal_config;
  val &= EMC_AUTO_CAL_CONFIG_AUTO_CAL_START;
  emc_ccfifo_writel(emc, val, EMC_AUTO_CAL_CONFIG);
 }


 if (emc->dram_type == DRAM_TYPE_DDR3 &&
     dll_change == DLL_CHANGE_ON) {
  u32 cnt = 512;

  if (timing->emc_zcal_interval != 0 &&
      last->emc_zcal_interval == 0)
   cnt -= emc->dram_num * 256;

  val = (timing->emc_mrs_wait_cnt
   & EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK)
   >> EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT;
  if (cnt < val)
   cnt = val;

  val = timing->emc_mrs_wait_cnt
   & ~EMC_MRS_WAIT_CNT_LONG_WAIT_MASK;
  val |= (cnt << EMC_MRS_WAIT_CNT_LONG_WAIT_SHIFT)
   & EMC_MRS_WAIT_CNT_LONG_WAIT_MASK;

  writel(val, emc->regs + EMC_MRS_WAIT_CNT);
 }

 val = timing->emc_cfg_2;
 val &= ~EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR;
 emc_ccfifo_writel(emc, val, EMC_CFG_2);


 if (emc->dram_type == DRAM_TYPE_DDR3 && dll_change == DLL_CHANGE_OFF)
  emc_ccfifo_writel(emc, timing->emc_mode_1, EMC_EMRS);


 emc_ccfifo_writel(emc, EMC_REFCTRL_DEV_SEL(emc->dram_num),
     EMC_REFCTRL);
 if (emc->dram_type == DRAM_TYPE_DDR3)
  emc_ccfifo_writel(emc, EMC_DRAM_DEV_SEL(emc->dram_num) |
           EMC_SELF_REF_CMD_ENABLED,
      EMC_SELF_REF);


 emc_ccfifo_writel(emc, 1, EMC_STALL_THEN_EXE_AFTER_CLKCHANGE);


 if (emc->dram_type == DRAM_TYPE_DDR3)
  emc_ccfifo_writel(emc, EMC_DRAM_DEV_SEL(emc->dram_num),
      EMC_SELF_REF);
 emc_ccfifo_writel(emc, EMC_REFCTRL_DEV_SEL(emc->dram_num) |
          EMC_REFCTRL_ENABLE,
     EMC_REFCTRL);


 if (emc->dram_type == DRAM_TYPE_DDR3) {
  if (timing->emc_mode_1 != last->emc_mode_1)
   emc_ccfifo_writel(emc, timing->emc_mode_1, EMC_EMRS);
  if (timing->emc_mode_2 != last->emc_mode_2)
   emc_ccfifo_writel(emc, timing->emc_mode_2, EMC_EMRS2);

  if ((timing->emc_mode_reset != last->emc_mode_reset) ||
      dll_change == DLL_CHANGE_ON) {
   val = timing->emc_mode_reset;
   if (dll_change == DLL_CHANGE_ON) {
    val |= EMC_MODE_SET_DLL_RESET;
    val |= EMC_MODE_SET_LONG_CNT;
   } else {
    val &= ~EMC_MODE_SET_DLL_RESET;
   }
   emc_ccfifo_writel(emc, val, EMC_MRS);
  }
 } else {
  if (timing->emc_mode_2 != last->emc_mode_2)
   emc_ccfifo_writel(emc, timing->emc_mode_2, EMC_MRW2);
  if (timing->emc_mode_1 != last->emc_mode_1)
   emc_ccfifo_writel(emc, timing->emc_mode_1, EMC_MRW);
  if (timing->emc_mode_4 != last->emc_mode_4)
   emc_ccfifo_writel(emc, timing->emc_mode_4, EMC_MRW4);
 }


 if (timing->emc_zcal_interval != 0 && last->emc_zcal_interval == 0) {
  emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, EMC_ZQ_CAL);
  if (emc->dram_num > 1)
   emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV1,
       EMC_ZQ_CAL);
 }


 emc_ccfifo_writel(emc, 0, EMC_CCFIFO_STATUS);

 if (timing->emc_cfg_2 & EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR)
  emc_ccfifo_writel(emc, timing->emc_cfg_2, EMC_CFG_2);


 emc_seq_disable_auto_cal(emc);


 readl(emc->regs + EMC_INTSTATUS);

 return 0;
}
