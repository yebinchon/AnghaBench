
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int mmc; } ;
struct renesas_sdhi {struct pinctrl_state* pinctrl; struct pinctrl_state* pins_uhs; struct pinctrl_state* pins_default; } ;
struct pinctrl_state {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct pinctrl_state*) ;


 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_vqmmc (int ,struct mmc_ios*) ;
 int pinctrl_select_state (struct pinctrl_state*,struct pinctrl_state*) ;

__attribute__((used)) static int renesas_sdhi_start_signal_voltage_switch(struct mmc_host *mmc,
          struct mmc_ios *ios)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);
 struct renesas_sdhi *priv = host_to_priv(host);
 struct pinctrl_state *pin_state;
 int ret;

 switch (ios->signal_voltage) {
 case 128:
  pin_state = priv->pins_default;
  break;
 case 129:
  pin_state = priv->pins_uhs;
  break;
 default:
  return -EINVAL;
 }





 if (IS_ERR(priv->pinctrl) || IS_ERR(pin_state))
  return ios->signal_voltage ==
   128 ? 0 : -EINVAL;

 ret = mmc_regulator_set_vqmmc(host->mmc, ios);
 if (ret)
  return ret;

 return pinctrl_select_state(priv->pinctrl, pin_state);
}
