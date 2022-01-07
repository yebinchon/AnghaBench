
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;
struct pltfm_imx_data {struct pinctrl_state* pinctrl; struct pinctrl_state* pins_default; struct pinctrl_state* pins_200mhz; struct pinctrl_state* pins_100mhz; } ;
struct pinctrl_state {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct pinctrl_state*) ;





 int dev_dbg (int ,char*,unsigned int) ;
 int mmc_dev (int ) ;
 int pinctrl_select_state (struct pinctrl_state*,struct pinctrl_state*) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int esdhc_change_pinstate(struct sdhci_host *host,
      unsigned int uhs)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 struct pinctrl_state *pinctrl;

 dev_dbg(mmc_dev(host->mmc), "change pinctrl state for uhs %d\n", uhs);

 if (IS_ERR(imx_data->pinctrl) ||
  IS_ERR(imx_data->pins_default) ||
  IS_ERR(imx_data->pins_100mhz) ||
  IS_ERR(imx_data->pins_200mhz))
  return -EINVAL;

 switch (uhs) {
 case 128:
 case 130:
  pinctrl = imx_data->pins_100mhz;
  break;
 case 129:
 case 132:
 case 131:
  pinctrl = imx_data->pins_200mhz;
  break;
 default:

  pinctrl = imx_data->pins_default;
 }

 return pinctrl_select_state(imx_data->pinctrl, pinctrl);
}
