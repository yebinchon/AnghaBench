
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {TYPE_2__* card; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath6kl_sdio {struct sdio_func* func; } ;
struct ath6kl {scalar_t__ suspend_mode; scalar_t__ wow_suspend_mode; } ;
typedef int mmc_pm_flag_t ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int pm_flags; } ;


 int ATH6KL_CFG_SUSPEND_CUTPOWER ;
 int ATH6KL_CFG_SUSPEND_DEEPSLEEP ;
 int ATH6KL_CFG_SUSPEND_WOW ;
 int ENOTCONN ;
 int MMC_PM_KEEP_POWER ;
 int MMC_PM_WAKE_SDIO_IRQ ;
 scalar_t__ WLAN_POWER_STATE_CUT_PWR ;
 scalar_t__ WLAN_POWER_STATE_DEEP_SLEEP ;
 scalar_t__ WLAN_POWER_STATE_WOW ;
 int ath6kl_cfg80211_suspend (struct ath6kl*,int ,struct cfg80211_wowlan*) ;
 int ath6kl_err (char*,int) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int ath6kl_set_sdio_pm_caps (struct ath6kl*) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int sdio_set_host_pm_flags (struct sdio_func*,int) ;

__attribute__((used)) static int ath6kl_sdio_suspend(struct ath6kl *ar, struct cfg80211_wowlan *wow)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 mmc_pm_flag_t flags;
 bool try_deepsleep = 0;
 int ret;

 if (ar->suspend_mode == WLAN_POWER_STATE_WOW ||
     (!ar->suspend_mode && wow)) {
  ret = ath6kl_set_sdio_pm_caps(ar);
  if (ret)
   goto cut_pwr;

  ret = ath6kl_cfg80211_suspend(ar, ATH6KL_CFG_SUSPEND_WOW, wow);
  if (ret && ret != -ENOTCONN)
   ath6kl_err("wow suspend failed: %d\n", ret);

  if (ret &&
      (!ar->wow_suspend_mode ||
       ar->wow_suspend_mode == WLAN_POWER_STATE_DEEP_SLEEP))
   try_deepsleep = 1;
  else if (ret &&
    ar->wow_suspend_mode == WLAN_POWER_STATE_CUT_PWR)
   goto cut_pwr;
  if (!ret)
   return 0;
 }

 if (ar->suspend_mode == WLAN_POWER_STATE_DEEP_SLEEP ||
     !ar->suspend_mode || try_deepsleep) {
  flags = sdio_get_host_pm_caps(func);
  if (!(flags & MMC_PM_KEEP_POWER))
   goto cut_pwr;

  ret = sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);
  if (ret)
   goto cut_pwr;







  if ((flags & MMC_PM_WAKE_SDIO_IRQ)) {
   ret = sdio_set_host_pm_flags(func,
      MMC_PM_WAKE_SDIO_IRQ);
   if (ret)
    goto cut_pwr;
  }

  ret = ath6kl_cfg80211_suspend(ar, ATH6KL_CFG_SUSPEND_DEEPSLEEP,
           ((void*)0));
  if (ret)
   goto cut_pwr;

  return 0;
 }

cut_pwr:
 if (func->card && func->card->host)
  func->card->host->pm_flags &= ~MMC_PM_KEEP_POWER;

 return ath6kl_cfg80211_suspend(ar, ATH6KL_CFG_SUSPEND_CUTPOWER, ((void*)0));
}
