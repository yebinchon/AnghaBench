
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int hs400_mode; scalar_t__ base; int hs400_ds_delay; scalar_t__ top_base; } ;
struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ EMMC50_CFG3 ;
 int EMMC50_CFG3_OUTS_WR ;
 scalar_t__ EMMC50_PAD_DS_TUNE ;
 scalar_t__ MSDC_PATCH_BIT2 ;
 int MSDC_PATCH_BIT2_CFGCRCSTS ;
 scalar_t__ PAD_DS_TUNE ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int sdr_clr_bits (scalar_t__,int ) ;
 int sdr_set_field (scalar_t__,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int msdc_prepare_hs400_tuning(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct msdc_host *host = mmc_priv(mmc);
 host->hs400_mode = 1;

 if (host->top_base)
  writel(host->hs400_ds_delay,
         host->top_base + EMMC50_PAD_DS_TUNE);
 else
  writel(host->hs400_ds_delay, host->base + PAD_DS_TUNE);

 sdr_clr_bits(host->base + MSDC_PATCH_BIT2, MSDC_PATCH_BIT2_CFGCRCSTS);

 sdr_set_field(host->base + EMMC50_CFG3, EMMC50_CFG3_OUTS_WR, 2);

 return 0;
}
