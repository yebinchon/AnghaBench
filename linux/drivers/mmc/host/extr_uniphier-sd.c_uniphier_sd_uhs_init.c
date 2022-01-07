
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_sd_priv {void* pinstate_uhs; void* pinctrl; void* pinstate_default; } ;
struct TYPE_2__ {int start_signal_voltage_switch; } ;
struct tmio_mmc_host {TYPE_1__ ops; int mmc; } ;


 scalar_t__ IS_ERR (void*) ;
 char* PINCTRL_STATE_DEFAULT ;
 int PTR_ERR (void*) ;
 void* devm_pinctrl_get (int ) ;
 int mmc_dev (int ) ;
 void* pinctrl_lookup_state (void*,char*) ;
 int uniphier_sd_start_signal_voltage_switch ;

__attribute__((used)) static int uniphier_sd_uhs_init(struct tmio_mmc_host *host,
    struct uniphier_sd_priv *priv)
{
 priv->pinctrl = devm_pinctrl_get(mmc_dev(host->mmc));
 if (IS_ERR(priv->pinctrl))
  return PTR_ERR(priv->pinctrl);

 priv->pinstate_default = pinctrl_lookup_state(priv->pinctrl,
            PINCTRL_STATE_DEFAULT);
 if (IS_ERR(priv->pinstate_default))
  return PTR_ERR(priv->pinstate_default);

 priv->pinstate_uhs = pinctrl_lookup_state(priv->pinctrl, "uhs");
 if (IS_ERR(priv->pinstate_uhs))
  return PTR_ERR(priv->pinstate_uhs);

 host->ops.start_signal_voltage_switch =
     uniphier_sd_start_signal_voltage_switch;

 return 0;
}
