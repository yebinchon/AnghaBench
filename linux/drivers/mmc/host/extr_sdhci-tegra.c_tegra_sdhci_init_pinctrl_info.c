
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra {int pad_control_available; int * pinctrl_state_1v8; int * pinctrl_sdmmc; int * pinctrl_state_3v3; int * pinctrl_state_3v3_drv; int * pinctrl_state_1v8_drv; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_warn (struct device*,char*,int ) ;
 int * devm_pinctrl_get (struct device*) ;
 void* pinctrl_lookup_state (int *,char*) ;

__attribute__((used)) static int tegra_sdhci_init_pinctrl_info(struct device *dev,
      struct sdhci_tegra *tegra_host)
{
 tegra_host->pinctrl_sdmmc = devm_pinctrl_get(dev);
 if (IS_ERR(tegra_host->pinctrl_sdmmc)) {
  dev_dbg(dev, "No pinctrl info, err: %ld\n",
   PTR_ERR(tegra_host->pinctrl_sdmmc));
  return -1;
 }

 tegra_host->pinctrl_state_1v8_drv = pinctrl_lookup_state(
    tegra_host->pinctrl_sdmmc, "sdmmc-1v8-drv");
 if (IS_ERR(tegra_host->pinctrl_state_1v8_drv)) {
  if (PTR_ERR(tegra_host->pinctrl_state_1v8_drv) == -ENODEV)
   tegra_host->pinctrl_state_1v8_drv = ((void*)0);
 }

 tegra_host->pinctrl_state_3v3_drv = pinctrl_lookup_state(
    tegra_host->pinctrl_sdmmc, "sdmmc-3v3-drv");
 if (IS_ERR(tegra_host->pinctrl_state_3v3_drv)) {
  if (PTR_ERR(tegra_host->pinctrl_state_3v3_drv) == -ENODEV)
   tegra_host->pinctrl_state_3v3_drv = ((void*)0);
 }

 tegra_host->pinctrl_state_3v3 =
  pinctrl_lookup_state(tegra_host->pinctrl_sdmmc, "sdmmc-3v3");
 if (IS_ERR(tegra_host->pinctrl_state_3v3)) {
  dev_warn(dev, "Missing 3.3V pad state, err: %ld\n",
    PTR_ERR(tegra_host->pinctrl_state_3v3));
  return -1;
 }

 tegra_host->pinctrl_state_1v8 =
  pinctrl_lookup_state(tegra_host->pinctrl_sdmmc, "sdmmc-1v8");
 if (IS_ERR(tegra_host->pinctrl_state_1v8)) {
  dev_warn(dev, "Missing 1.8V pad state, err: %ld\n",
    PTR_ERR(tegra_host->pinctrl_state_1v8));
  return -1;
 }

 tegra_host->pad_control_available = 1;

 return 0;
}
