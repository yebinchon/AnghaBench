
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_sd_priv {int pinctrl; struct pinctrl_state* pinstate_uhs; struct pinctrl_state* pinstate_default; } ;
struct tmio_mmc_host {scalar_t__ ctl; } ;
struct pinctrl_state {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;


 int ENOTSUPP ;
 int FIELD_PREP (int ,int ) ;


 scalar_t__ UNIPHIER_SD_VOLT ;
 int UNIPHIER_SD_VOLT_180 ;
 int UNIPHIER_SD_VOLT_330 ;
 int UNIPHIER_SD_VOLT_MASK ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int pinctrl_select_state (int ,struct pinctrl_state*) ;
 int readl (scalar_t__) ;
 struct uniphier_sd_priv* uniphier_sd_priv (struct tmio_mmc_host*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int uniphier_sd_start_signal_voltage_switch(struct mmc_host *mmc,
         struct mmc_ios *ios)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);
 struct uniphier_sd_priv *priv = uniphier_sd_priv(host);
 struct pinctrl_state *pinstate;
 u32 val, tmp;

 switch (ios->signal_voltage) {
 case 128:
  val = UNIPHIER_SD_VOLT_330;
  pinstate = priv->pinstate_default;
  break;
 case 129:
  val = UNIPHIER_SD_VOLT_180;
  pinstate = priv->pinstate_uhs;
  break;
 default:
  return -ENOTSUPP;
 }

 tmp = readl(host->ctl + UNIPHIER_SD_VOLT);
 tmp &= ~UNIPHIER_SD_VOLT_MASK;
 tmp |= FIELD_PREP(UNIPHIER_SD_VOLT_MASK, val);
 writel(tmp, host->ctl + UNIPHIER_SD_VOLT);

 pinctrl_select_state(priv->pinctrl, pinstate);

 return 0;
}
