
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {unsigned int clock; } ;
struct sdhci_host {scalar_t__ ioaddr; TYPE_2__* mmc; } ;
struct pltfm_imx_data {scalar_t__ is_ddr; TYPE_1__* socdata; } ;
struct TYPE_4__ {unsigned int actual_clock; } ;
struct TYPE_3__ {int flags; } ;


 int BIT (int) ;
 int ESDHC_CLOCK_HCKEN ;
 int ESDHC_CLOCK_IPGEN ;
 int ESDHC_CLOCK_MASK ;
 int ESDHC_CLOCK_PEREN ;
 int ESDHC_DIVIDER_SHIFT ;
 scalar_t__ ESDHC_DLL_CTRL ;
 int ESDHC_FLAG_ERR010450 ;
 int ESDHC_PREDIV_SHIFT ;
 int ESDHC_SYSTEM_CONTROL ;
 scalar_t__ ESDHC_VENDOR_SPEC ;
 int ESDHC_VENDOR_SPEC_FRC_SDCLK_ON ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 scalar_t__ esdhc_is_usdhc (struct pltfm_imx_data*) ;
 scalar_t__ is_imx53_esdhc (struct pltfm_imx_data*) ;
 int mdelay (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mmc_dev (TYPE_2__*) ;
 int readl (scalar_t__) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void esdhc_pltfm_set_clock(struct sdhci_host *host,
      unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 unsigned int host_clock = pltfm_host->clock;
 int ddr_pre_div = imx_data->is_ddr ? 2 : 1;
 int pre_div = 1;
 int div = 1;
 u32 temp, val;

 if (esdhc_is_usdhc(imx_data)) {
  val = readl(host->ioaddr + ESDHC_VENDOR_SPEC);
  writel(val & ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
   host->ioaddr + ESDHC_VENDOR_SPEC);
 }

 if (clock == 0) {
  host->mmc->actual_clock = 0;
  return;
 }


 if (is_imx53_esdhc(imx_data)) {




  val = readl(host->ioaddr + ESDHC_DLL_CTRL);
  writel(val | BIT(10), host->ioaddr + ESDHC_DLL_CTRL);
  temp = readl(host->ioaddr + ESDHC_DLL_CTRL);
  writel(val, host->ioaddr + ESDHC_DLL_CTRL);
  if (temp & BIT(10))
   pre_div = 2;
 }

 temp = sdhci_readl(host, ESDHC_SYSTEM_CONTROL);
 temp &= ~(ESDHC_CLOCK_IPGEN | ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN
  | ESDHC_CLOCK_MASK);
 sdhci_writel(host, temp, ESDHC_SYSTEM_CONTROL);

 if (imx_data->socdata->flags & ESDHC_FLAG_ERR010450) {
  unsigned int max_clock;

  max_clock = imx_data->is_ddr ? 45000000 : 150000000;

  clock = min(clock, max_clock);
 }

 while (host_clock / (16 * pre_div * ddr_pre_div) > clock &&
   pre_div < 256)
  pre_div *= 2;

 while (host_clock / (div * pre_div * ddr_pre_div) > clock && div < 16)
  div++;

 host->mmc->actual_clock = host_clock / (div * pre_div * ddr_pre_div);
 dev_dbg(mmc_dev(host->mmc), "desired SD clock: %d, actual: %d\n",
  clock, host->mmc->actual_clock);

 pre_div >>= 1;
 div--;

 temp = sdhci_readl(host, ESDHC_SYSTEM_CONTROL);
 temp |= (ESDHC_CLOCK_IPGEN | ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN
  | (div << ESDHC_DIVIDER_SHIFT)
  | (pre_div << ESDHC_PREDIV_SHIFT));
 sdhci_writel(host, temp, ESDHC_SYSTEM_CONTROL);

 if (esdhc_is_usdhc(imx_data)) {
  val = readl(host->ioaddr + ESDHC_VENDOR_SPEC);
  writel(val | ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
   host->ioaddr + ESDHC_VENDOR_SPEC);
 }

 mdelay(1);
}
