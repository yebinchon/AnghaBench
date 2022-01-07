
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct lbs_private {int power_up_on_resume; scalar_t__ wol_criteria; scalar_t__ fw_ready; } ;
struct if_sdio_card {struct lbs_private* priv; } ;
struct device {int dummy; } ;
typedef int mmc_pm_flag_t ;


 scalar_t__ EHS_REMOVE_WAKEUP ;
 int ENOSYS ;
 int MMC_PM_KEEP_POWER ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,...) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int if_sdio_power_off (struct if_sdio_card*) ;
 int lbs_iface_active (struct lbs_private*) ;
 int lbs_suspend (struct lbs_private*) ;
 int sdio_func_id (struct sdio_func*) ;
 struct if_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int sdio_set_host_pm_flags (struct sdio_func*,int) ;

__attribute__((used)) static int if_sdio_suspend(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct if_sdio_card *card = sdio_get_drvdata(func);
 struct lbs_private *priv = card->priv;
 int ret;

 mmc_pm_flag_t flags = sdio_get_host_pm_caps(func);
 priv->power_up_on_resume = 0;



 if (!lbs_iface_active(priv)) {
  if (priv->fw_ready) {
   priv->power_up_on_resume = 1;
   if_sdio_power_off(card);
  }

  return 0;
 }

 dev_info(dev, "%s: suspend: PM flags = 0x%x\n",
   sdio_func_id(func), flags);




 if (priv->wol_criteria == EHS_REMOVE_WAKEUP) {
  dev_info(dev, "Suspend without wake params -- powering down card\n");
  if (priv->fw_ready) {
   ret = lbs_suspend(priv);
   if (ret)
    return ret;

   priv->power_up_on_resume = 1;
   if_sdio_power_off(card);
  }

  return 0;
 }

 if (!(flags & MMC_PM_KEEP_POWER)) {
  dev_err(dev, "%s: cannot remain alive while host is suspended\n",
   sdio_func_id(func));
  return -ENOSYS;
 }

 ret = sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);
 if (ret)
  return ret;

 ret = lbs_suspend(priv);
 if (ret)
  return ret;

 return sdio_set_host_pm_flags(func, MMC_PM_WAKE_SDIO_IRQ);
}
