
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int pad_tune; int emmc_top_cmd; int emmc_top_control; int pad_cmd_tune; int iocon; } ;
struct TYPE_8__ {int pad_tune; int emmc_top_cmd; int emmc_top_control; int iocon; } ;
struct msdc_host {int mclk; int base; int src_clk_freq; unsigned char timing; int top_base; int hs400_cmd_int_delay; TYPE_3__* mmc; int dev; TYPE_2__* dev_comp; TYPE_1__ saved_tune_para; TYPE_4__ def_tune_para; int timeout_clks; int timeout_ns; int src_clk; scalar_t__ src_clk_cg; } ;
struct TYPE_7__ {int actual_clock; } ;
struct TYPE_6__ {int pad_tune_reg; int clk_div_bits; scalar_t__ hs400_tune; } ;


 int EMMC_TOP_CMD ;
 int EMMC_TOP_CONTROL ;
 unsigned char MMC_TIMING_MMC_DDR52 ;
 unsigned char MMC_TIMING_MMC_HS400 ;
 unsigned char MMC_TIMING_UHS_DDR50 ;
 int MSDC_CFG ;
 int MSDC_CFG_CKDIV ;
 int MSDC_CFG_CKDIV_EXTRA ;
 int MSDC_CFG_CKMOD ;
 int MSDC_CFG_CKMOD_EXTRA ;
 int MSDC_CFG_CKPDN ;
 int MSDC_CFG_CKSTB ;
 int MSDC_CFG_HS400_CK_MODE ;
 int MSDC_CFG_HS400_CK_MODE_EXTRA ;
 int MSDC_INTEN ;
 int MSDC_IOCON ;
 int MSDC_PAD_TUNE_CMDRRDLY ;
 int PAD_CMD_TUNE ;
 int clk_disable_unprepare (scalar_t__) ;
 scalar_t__ clk_get_parent (int ) ;
 int clk_prepare_enable (scalar_t__) ;
 int cpu_relax () ;
 int dev_dbg (int ,char*,...) ;
 int msdc_set_timeout (struct msdc_host*,int ,int ) ;
 int readl (int) ;
 int sdr_clr_bits (int,int) ;
 int sdr_set_bits (int,int) ;
 int sdr_set_field (int,int,int) ;
 int writel (int ,int) ;

__attribute__((used)) static void msdc_set_mclk(struct msdc_host *host, unsigned char timing, u32 hz)
{
 u32 mode;
 u32 flags;
 u32 div;
 u32 sclk;
 u32 tune_reg = host->dev_comp->pad_tune_reg;

 if (!hz) {
  dev_dbg(host->dev, "set mclk to 0\n");
  host->mclk = 0;
  host->mmc->actual_clock = 0;
  sdr_clr_bits(host->base + MSDC_CFG, MSDC_CFG_CKPDN);
  return;
 }

 flags = readl(host->base + MSDC_INTEN);
 sdr_clr_bits(host->base + MSDC_INTEN, flags);
 if (host->dev_comp->clk_div_bits == 8)
  sdr_clr_bits(host->base + MSDC_CFG, MSDC_CFG_HS400_CK_MODE);
 else
  sdr_clr_bits(host->base + MSDC_CFG,
        MSDC_CFG_HS400_CK_MODE_EXTRA);
 if (timing == MMC_TIMING_UHS_DDR50 ||
     timing == MMC_TIMING_MMC_DDR52 ||
     timing == MMC_TIMING_MMC_HS400) {
  if (timing == MMC_TIMING_MMC_HS400)
   mode = 0x3;
  else
   mode = 0x2;

  if (hz >= (host->src_clk_freq >> 2)) {
   div = 0;
   sclk = host->src_clk_freq >> 2;
  } else {
   div = (host->src_clk_freq + ((hz << 2) - 1)) / (hz << 2);
   sclk = (host->src_clk_freq >> 2) / div;
   div = (div >> 1);
  }

  if (timing == MMC_TIMING_MMC_HS400 &&
      hz >= (host->src_clk_freq >> 1)) {
   if (host->dev_comp->clk_div_bits == 8)
    sdr_set_bits(host->base + MSDC_CFG,
          MSDC_CFG_HS400_CK_MODE);
   else
    sdr_set_bits(host->base + MSDC_CFG,
          MSDC_CFG_HS400_CK_MODE_EXTRA);
   sclk = host->src_clk_freq >> 1;
   div = 0;
  }
 } else if (hz >= host->src_clk_freq) {
  mode = 0x1;
  div = 0;
  sclk = host->src_clk_freq;
 } else {
  mode = 0x0;
  if (hz >= (host->src_clk_freq >> 1)) {
   div = 0;
   sclk = host->src_clk_freq >> 1;
  } else {
   div = (host->src_clk_freq + ((hz << 2) - 1)) / (hz << 2);
   sclk = (host->src_clk_freq >> 2) / div;
  }
 }
 sdr_clr_bits(host->base + MSDC_CFG, MSDC_CFG_CKPDN);




 if (host->src_clk_cg)
  clk_disable_unprepare(host->src_clk_cg);
 else
  clk_disable_unprepare(clk_get_parent(host->src_clk));
 if (host->dev_comp->clk_div_bits == 8)
  sdr_set_field(host->base + MSDC_CFG,
         MSDC_CFG_CKMOD | MSDC_CFG_CKDIV,
         (mode << 8) | div);
 else
  sdr_set_field(host->base + MSDC_CFG,
         MSDC_CFG_CKMOD_EXTRA | MSDC_CFG_CKDIV_EXTRA,
         (mode << 12) | div);
 if (host->src_clk_cg)
  clk_prepare_enable(host->src_clk_cg);
 else
  clk_prepare_enable(clk_get_parent(host->src_clk));

 while (!(readl(host->base + MSDC_CFG) & MSDC_CFG_CKSTB))
  cpu_relax();
 sdr_set_bits(host->base + MSDC_CFG, MSDC_CFG_CKPDN);
 host->mmc->actual_clock = sclk;
 host->mclk = hz;
 host->timing = timing;

 msdc_set_timeout(host, host->timeout_ns, host->timeout_clks);
 sdr_set_bits(host->base + MSDC_INTEN, flags);





 if (host->mmc->actual_clock <= 52000000) {
  writel(host->def_tune_para.iocon, host->base + MSDC_IOCON);
  if (host->top_base) {
   writel(host->def_tune_para.emmc_top_control,
          host->top_base + EMMC_TOP_CONTROL);
   writel(host->def_tune_para.emmc_top_cmd,
          host->top_base + EMMC_TOP_CMD);
  } else {
   writel(host->def_tune_para.pad_tune,
          host->base + tune_reg);
  }
 } else {
  writel(host->saved_tune_para.iocon, host->base + MSDC_IOCON);
  writel(host->saved_tune_para.pad_cmd_tune,
         host->base + PAD_CMD_TUNE);
  if (host->top_base) {
   writel(host->saved_tune_para.emmc_top_control,
          host->top_base + EMMC_TOP_CONTROL);
   writel(host->saved_tune_para.emmc_top_cmd,
          host->top_base + EMMC_TOP_CMD);
  } else {
   writel(host->saved_tune_para.pad_tune,
          host->base + tune_reg);
  }
 }

 if (timing == MMC_TIMING_MMC_HS400 &&
     host->dev_comp->hs400_tune)
  sdr_set_field(host->base + tune_reg,
         MSDC_PAD_TUNE_CMDRRDLY,
         host->hs400_cmd_int_delay);
 dev_dbg(host->dev, "sclk: %d, timing: %d\n", host->mmc->actual_clock,
  timing);
}
