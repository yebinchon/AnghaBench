
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int clock; TYPE_1__* ops; scalar_t__ ioaddr; } ;
struct esdhc_platform_data {int delay_line; } ;
struct pltfm_imx_data {int is_ddr; struct esdhc_platform_data boarddata; } ;
struct TYPE_2__ {int (* set_clock ) (struct sdhci_host*,int ) ;} ;


 scalar_t__ ESDHC_DLL_CTRL ;
 int ESDHC_DLL_OVERRIDE_EN_SHIFT ;
 int ESDHC_DLL_OVERRIDE_VAL_SHIFT ;
 scalar_t__ ESDHC_MIX_CTRL ;
 int ESDHC_MIX_CTRL_DDREN ;
 int ESDHC_MIX_CTRL_HS400_EN ;
 int esdhc_change_pinstate (struct sdhci_host*,unsigned int) ;
 int esdhc_reset_tuning (struct sdhci_host*) ;
 int esdhc_set_strobe_dll (struct sdhci_host*) ;
 int is_imx53_esdhc (struct pltfm_imx_data*) ;
 int readl (scalar_t__) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int stub1 (struct sdhci_host*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void esdhc_set_uhs_signaling(struct sdhci_host *host, unsigned timing)
{
 u32 m;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 struct esdhc_platform_data *boarddata = &imx_data->boarddata;


 m = readl(host->ioaddr + ESDHC_MIX_CTRL);
 m &= ~(ESDHC_MIX_CTRL_DDREN | ESDHC_MIX_CTRL_HS400_EN);
 imx_data->is_ddr = 0;

 switch (timing) {
 case 130:
 case 129:
 case 128:
 case 131:
 case 135:
 case 134:
  writel(m, host->ioaddr + ESDHC_MIX_CTRL);
  break;
 case 132:
 case 136:
  m |= ESDHC_MIX_CTRL_DDREN;
  writel(m, host->ioaddr + ESDHC_MIX_CTRL);
  imx_data->is_ddr = 1;
  if (boarddata->delay_line) {
   u32 v;
   v = boarddata->delay_line <<
    ESDHC_DLL_OVERRIDE_VAL_SHIFT |
    (1 << ESDHC_DLL_OVERRIDE_EN_SHIFT);
   if (is_imx53_esdhc(imx_data))
    v <<= 1;
   writel(v, host->ioaddr + ESDHC_DLL_CTRL);
  }
  break;
 case 133:
  m |= ESDHC_MIX_CTRL_DDREN | ESDHC_MIX_CTRL_HS400_EN;
  writel(m, host->ioaddr + ESDHC_MIX_CTRL);
  imx_data->is_ddr = 1;

  host->ops->set_clock(host, host->clock);
  esdhc_set_strobe_dll(host);
  break;
 case 137:
 default:
  esdhc_reset_tuning(host);
  break;
 }

 esdhc_change_pinstate(host, timing);
}
