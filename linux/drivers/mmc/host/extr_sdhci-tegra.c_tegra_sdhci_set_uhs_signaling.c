
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_tegra {int ddr_signaling; int dqs_trim; scalar_t__ default_tap; scalar_t__ tuned_tap_delay; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int tuning_loop_count; } ;
 int SDHCI_TEGRA_VNDR_TUN_CTRL1_0 ;
 int SDHCI_VNDR_TUN_CTRL0_0 ;
 int SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK ;
 int SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT ;
 int SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK ;
 int SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT ;
 int SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK ;
 int SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT ;
 int TRIES_128 ;
 int TRIES_256 ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_set_uhs_signaling (struct sdhci_host*,unsigned int) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int tegra_sdhci_hs400_dll_cal (struct sdhci_host*) ;
 int tegra_sdhci_pad_autocalib (struct sdhci_host*) ;
 int tegra_sdhci_set_dqs_trim (struct sdhci_host*,int ) ;
 int tegra_sdhci_set_tap (struct sdhci_host*,scalar_t__) ;

__attribute__((used)) static void tegra_sdhci_set_uhs_signaling(struct sdhci_host *host,
       unsigned timing)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 bool set_default_tap = 0;
 bool set_dqs_trim = 0;
 bool do_hs400_dll_cal = 0;
 u8 iter = TRIES_256;
 u32 val;

 tegra_host->ddr_signaling = 0;
 switch (timing) {
 case 128:
  break;
 case 129:
 case 132:

  iter = TRIES_128;
  break;
 case 131:
  set_dqs_trim = 1;
  do_hs400_dll_cal = 1;
  iter = TRIES_128;
  break;
 case 133:
 case 130:
  tegra_host->ddr_signaling = 1;
  set_default_tap = 1;
  break;
 default:
  set_default_tap = 1;
  break;
 }

 val = sdhci_readl(host, SDHCI_VNDR_TUN_CTRL0_0);
 val &= ~(SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK |
   SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK |
   SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK);
 val |= (iter << SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT |
  0 << SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT |
  1 << SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT);
 sdhci_writel(host, val, SDHCI_VNDR_TUN_CTRL0_0);
 sdhci_writel(host, 0, SDHCI_TEGRA_VNDR_TUN_CTRL1_0);

 host->tuning_loop_count = (iter == TRIES_128) ? 128 : 256;

 sdhci_set_uhs_signaling(host, timing);

 tegra_sdhci_pad_autocalib(host);

 if (tegra_host->tuned_tap_delay && !set_default_tap)
  tegra_sdhci_set_tap(host, tegra_host->tuned_tap_delay);
 else
  tegra_sdhci_set_tap(host, tegra_host->default_tap);

 if (set_dqs_trim)
  tegra_sdhci_set_dqs_trim(host, tegra_host->dqs_trim);

 if (do_hs400_dll_cal)
  tegra_sdhci_hs400_dll_cal(host);
}
