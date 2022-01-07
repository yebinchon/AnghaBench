
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pinctrl {int dummy; } ;
struct omap_hsmmc_host {scalar_t__ wake_irq; TYPE_2__* dev; int base; TYPE_1__* pdata; int mmc; } ;
struct TYPE_8__ {int of_node; } ;
struct TYPE_7__ {int controller_flags; } ;


 int EINVAL ;
 int ENODEV ;
 int HCTL ;
 scalar_t__ IS_ERR (struct pinctrl*) ;
 int IWE ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_SWAKEUP_MISSING ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int PINCTRL_STATE_DEFAULT ;
 int PINCTRL_STATE_IDLE ;
 int PTR_ERR (struct pinctrl*) ;
 int dev_err (int ,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_pm_clear_wake_irq (TYPE_2__*) ;
 int dev_pm_set_dedicated_wake_irq (TYPE_2__*,scalar_t__) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct pinctrl* devm_pinctrl_get (TYPE_2__*) ;
 int devm_pinctrl_put (struct pinctrl*) ;
 int mmc_dev (int ) ;
 struct pinctrl* pinctrl_lookup_state (struct pinctrl*,int ) ;

__attribute__((used)) static int omap_hsmmc_configure_wake_irq(struct omap_hsmmc_host *host)
{
 int ret;







 if (!host->dev->of_node || !host->wake_irq)
  return -ENODEV;

 ret = dev_pm_set_dedicated_wake_irq(host->dev, host->wake_irq);
 if (ret) {
  dev_err(mmc_dev(host->mmc), "Unable to request wake IRQ\n");
  goto err;
 }





 if (host->pdata->controller_flags & OMAP_HSMMC_SWAKEUP_MISSING) {
  struct pinctrl *p = devm_pinctrl_get(host->dev);
  if (IS_ERR(p)) {
   ret = PTR_ERR(p);
   goto err_free_irq;
  }
  if (IS_ERR(pinctrl_lookup_state(p, PINCTRL_STATE_DEFAULT))) {
   dev_info(host->dev, "missing default pinctrl state\n");
   devm_pinctrl_put(p);
   ret = -EINVAL;
   goto err_free_irq;
  }

  if (IS_ERR(pinctrl_lookup_state(p, PINCTRL_STATE_IDLE))) {
   dev_info(host->dev, "missing idle pinctrl state\n");
   devm_pinctrl_put(p);
   ret = -EINVAL;
   goto err_free_irq;
  }
  devm_pinctrl_put(p);
 }

 OMAP_HSMMC_WRITE(host->base, HCTL,
    OMAP_HSMMC_READ(host->base, HCTL) | IWE);
 return 0;

err_free_irq:
 dev_pm_clear_wake_irq(host->dev);
err:
 dev_warn(host->dev, "no SDIO IRQ support, falling back to polling\n");
 host->wake_irq = 0;
 return ret;
}
