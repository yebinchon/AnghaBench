
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sdhci_omap_host {int flags; size_t timing; int pinctrl; struct pinctrl_state** pinctrl_state; struct device* dev; } ;
struct pinctrl_state {int dummy; } ;
struct device {int dummy; } ;


 int SDHCI_OMAP_REQUIRE_IODELAY ;
 int dev_err (struct device*,char*) ;
 int pinctrl_select_state (int ,struct pinctrl_state*) ;
 int sdhci_omap_start_clock (struct sdhci_omap_host*) ;
 int sdhci_omap_stop_clock (struct sdhci_omap_host*) ;

__attribute__((used)) static void sdhci_omap_set_timing(struct sdhci_omap_host *omap_host, u8 timing)
{
 int ret;
 struct pinctrl_state *pinctrl_state;
 struct device *dev = omap_host->dev;

 if (!(omap_host->flags & SDHCI_OMAP_REQUIRE_IODELAY))
  return;

 if (omap_host->timing == timing)
  return;

 sdhci_omap_stop_clock(omap_host);

 pinctrl_state = omap_host->pinctrl_state[timing];
 ret = pinctrl_select_state(omap_host->pinctrl, pinctrl_state);
 if (ret) {
  dev_err(dev, "failed to select pinctrl state\n");
  return;
 }

 sdhci_omap_start_clock(omap_host);
 omap_host->timing = timing;
}
