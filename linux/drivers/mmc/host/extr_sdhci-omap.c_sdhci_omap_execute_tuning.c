
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct thermal_zone_device {int dummy; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int is_tuning; struct device* dev; } ;
struct sdhci_host {int ier; } ;
struct mmc_ios {int clock; scalar_t__ timing; } ;
struct mmc_host {struct mmc_ios ios; } ;
struct device {int dummy; } ;


 scalar_t__ AC12_SCLK_SEL ;
 scalar_t__ CAPA2_TSDR50 ;
 int DIV_ROUND_UP (int,int) ;
 scalar_t__ DLL_SWT ;
 int EIO ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 scalar_t__ MAX_PHASE_DELAY ;
 scalar_t__ MMC_TIMING_UHS_SDR50 ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_OMAP_AC12 ;
 int SDHCI_OMAP_CAPA2 ;
 int SDHCI_OMAP_DLL ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_SIGNAL_ENABLE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 scalar_t__ mmc_send_tuning (struct mmc_host*,scalar_t__,int *) ;
 int sdhci_omap_disable_tuning (struct sdhci_omap_host*) ;
 scalar_t__ sdhci_omap_readl (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_set_dll (struct sdhci_omap_host*,scalar_t__) ;
 int sdhci_omap_writel (struct sdhci_omap_host*,int ,scalar_t__) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_reset (struct sdhci_host*,int) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int thermal_zone_get_temp (struct thermal_zone_device*,int*) ;
 struct thermal_zone_device* thermal_zone_get_zone_by_name (char*) ;

__attribute__((used)) static int sdhci_omap_execute_tuning(struct mmc_host *mmc, u32 opcode)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);
 struct thermal_zone_device *thermal_dev;
 struct device *dev = omap_host->dev;
 struct mmc_ios *ios = &mmc->ios;
 u32 start_window = 0, max_window = 0;
 bool single_point_failure = 0;
 bool dcrc_was_enabled = 0;
 u8 cur_match, prev_match = 0;
 u32 length = 0, max_len = 0;
 u32 phase_delay = 0;
 int temperature;
 int ret = 0;
 u32 reg;
 int i;


 if (ios->clock <= 52000000)
  return 0;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_CAPA2);
 if (ios->timing == MMC_TIMING_UHS_SDR50 && !(reg & CAPA2_TSDR50))
  return 0;

 thermal_dev = thermal_zone_get_zone_by_name("cpu_thermal");
 if (IS_ERR(thermal_dev)) {
  dev_err(dev, "Unable to get thermal zone for tuning\n");
  return PTR_ERR(thermal_dev);
 }

 ret = thermal_zone_get_temp(thermal_dev, &temperature);
 if (ret)
  return ret;

 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_DLL);
 reg |= DLL_SWT;
 sdhci_omap_writel(omap_host, SDHCI_OMAP_DLL, reg);







 if (host->ier & SDHCI_INT_DATA_CRC) {
  host->ier &= ~SDHCI_INT_DATA_CRC;
  dcrc_was_enabled = 1;
 }

 omap_host->is_tuning = 1;






 while (phase_delay <= MAX_PHASE_DELAY) {
  sdhci_omap_set_dll(omap_host, phase_delay);

  cur_match = !mmc_send_tuning(mmc, opcode, ((void*)0));
  if (cur_match) {
   if (prev_match) {
    length++;
   } else if (single_point_failure) {

    length++;
   } else {
    start_window = phase_delay;
    length = 1;
   }
  } else {
   single_point_failure = prev_match;
  }

  if (length > max_len) {
   max_window = start_window;
   max_len = length;
  }

  prev_match = cur_match;
  phase_delay += 4;
 }

 if (!max_len) {
  dev_err(dev, "Unable to find match\n");
  ret = -EIO;
  goto tuning_error;
 }





 if (temperature < -20000)
  phase_delay = min(max_window + 4 * (max_len - 1) - 24,
      max_window +
      DIV_ROUND_UP(13 * max_len, 16) * 4);
 else if (temperature < 20000)
  phase_delay = max_window + DIV_ROUND_UP(9 * max_len, 16) * 4;
 else if (temperature < 40000)
  phase_delay = max_window + DIV_ROUND_UP(8 * max_len, 16) * 4;
 else if (temperature < 70000)
  phase_delay = max_window + DIV_ROUND_UP(7 * max_len, 16) * 4;
 else if (temperature < 90000)
  phase_delay = max_window + DIV_ROUND_UP(5 * max_len, 16) * 4;
 else if (temperature < 120000)
  phase_delay = max_window + DIV_ROUND_UP(4 * max_len, 16) * 4;
 else
  phase_delay = max_window + DIV_ROUND_UP(3 * max_len, 16) * 4;







 for (i = 3; i <= 10; i++) {
  sdhci_omap_set_dll(omap_host, phase_delay + i);

  if (mmc_send_tuning(mmc, opcode, ((void*)0))) {
   if (temperature < 10000)
    phase_delay += i + 6;
   else if (temperature < 20000)
    phase_delay += i - 12;
   else if (temperature < 70000)
    phase_delay += i - 8;
   else
    phase_delay += i - 6;

   goto single_failure_found;
  }
 }

 for (i = 2; i >= -10; i--) {
  sdhci_omap_set_dll(omap_host, phase_delay + i);

  if (mmc_send_tuning(mmc, opcode, ((void*)0))) {
   if (temperature < 10000)
    phase_delay += i + 12;
   else if (temperature < 20000)
    phase_delay += i + 8;
   else if (temperature < 70000)
    phase_delay += i + 8;
   else if (temperature < 90000)
    phase_delay += i + 10;
   else
    phase_delay += i + 12;

   goto single_failure_found;
  }
 }

single_failure_found:
 reg = sdhci_omap_readl(omap_host, SDHCI_OMAP_AC12);
 if (!(reg & AC12_SCLK_SEL)) {
  ret = -EIO;
  goto tuning_error;
 }

 sdhci_omap_set_dll(omap_host, phase_delay);

 omap_host->is_tuning = 0;

 goto ret;

tuning_error:
 omap_host->is_tuning = 0;
 dev_err(dev, "Tuning failed\n");
 sdhci_omap_disable_tuning(omap_host);

ret:
 sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

 if (dcrc_was_enabled)
  host->ier |= SDHCI_INT_DATA_CRC;
 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
 return ret;
}
