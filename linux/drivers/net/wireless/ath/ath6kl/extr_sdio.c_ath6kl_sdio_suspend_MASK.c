#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {TYPE_2__* card; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath6kl_sdio {struct sdio_func* func; } ;
struct ath6kl {scalar_t__ suspend_mode; scalar_t__ wow_suspend_mode; } ;
typedef  int mmc_pm_flag_t ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int pm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_CFG_SUSPEND_CUTPOWER ; 
 int /*<<< orphan*/  ATH6KL_CFG_SUSPEND_DEEPSLEEP ; 
 int /*<<< orphan*/  ATH6KL_CFG_SUSPEND_WOW ; 
 int ENOTCONN ; 
 int MMC_PM_KEEP_POWER ; 
 int MMC_PM_WAKE_SDIO_IRQ ; 
 scalar_t__ WLAN_POWER_STATE_CUT_PWR ; 
 scalar_t__ WLAN_POWER_STATE_DEEP_SLEEP ; 
 scalar_t__ WLAN_POWER_STATE_WOW ; 
 int FUNC0 (struct ath6kl*,int /*<<< orphan*/ ,struct cfg80211_wowlan*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct ath6kl_sdio* FUNC2 (struct ath6kl*) ; 
 int FUNC3 (struct ath6kl*) ; 
 int FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*,int) ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar, struct cfg80211_wowlan *wow)
{
	struct ath6kl_sdio *ar_sdio = FUNC2(ar);
	struct sdio_func *func = ar_sdio->func;
	mmc_pm_flag_t flags;
	bool try_deepsleep = false;
	int ret;

	if (ar->suspend_mode == WLAN_POWER_STATE_WOW ||
	    (!ar->suspend_mode && wow)) {
		ret = FUNC3(ar);
		if (ret)
			goto cut_pwr;

		ret = FUNC0(ar, ATH6KL_CFG_SUSPEND_WOW, wow);
		if (ret && ret != -ENOTCONN)
			FUNC1("wow suspend failed: %d\n", ret);

		if (ret &&
		    (!ar->wow_suspend_mode ||
		     ar->wow_suspend_mode == WLAN_POWER_STATE_DEEP_SLEEP))
			try_deepsleep = true;
		else if (ret &&
			 ar->wow_suspend_mode == WLAN_POWER_STATE_CUT_PWR)
			goto cut_pwr;
		if (!ret)
			return 0;
	}

	if (ar->suspend_mode == WLAN_POWER_STATE_DEEP_SLEEP ||
	    !ar->suspend_mode || try_deepsleep) {
		flags = FUNC4(func);
		if (!(flags & MMC_PM_KEEP_POWER))
			goto cut_pwr;

		ret = FUNC5(func, MMC_PM_KEEP_POWER);
		if (ret)
			goto cut_pwr;

		/*
		 * Workaround to support Deep Sleep with MSM, set the host pm
		 * flag as MMC_PM_WAKE_SDIO_IRQ to allow SDCC deiver to disable
		 * the sdc2_clock and internally allows MSM to enter
		 * TCXO shutdown properly.
		 */
		if ((flags & MMC_PM_WAKE_SDIO_IRQ)) {
			ret = FUNC5(func,
						MMC_PM_WAKE_SDIO_IRQ);
			if (ret)
				goto cut_pwr;
		}

		ret = FUNC0(ar, ATH6KL_CFG_SUSPEND_DEEPSLEEP,
					      NULL);
		if (ret)
			goto cut_pwr;

		return 0;
	}

cut_pwr:
	if (func->card && func->card->host)
		func->card->host->pm_flags &= ~MMC_PM_KEEP_POWER;

	return FUNC0(ar, ATH6KL_CFG_SUSPEND_CUTPOWER, NULL);
}