#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sdio_func {int dummy; } ;
struct ath6kl_sdio {struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;
typedef  int mmc_pm_flag_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_SUSPEND ; 
 int EINVAL ; 
 int MMC_PM_KEEP_POWER ; 
 int MMC_PM_WAKE_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct ath6kl_sdio* FUNC2 (struct ath6kl*) ; 
 int FUNC3 (struct sdio_func*) ; 
 int FUNC4 (struct sdio_func*,int) ; 

__attribute__((used)) static int FUNC5(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC2(ar);
	struct sdio_func *func = ar_sdio->func;
	mmc_pm_flag_t flags;
	int ret;

	flags = FUNC3(func);

	FUNC0(ATH6KL_DBG_SUSPEND, "sdio suspend pm_caps 0x%x\n", flags);

	if (!(flags & MMC_PM_WAKE_SDIO_IRQ) ||
	    !(flags & MMC_PM_KEEP_POWER))
		return -EINVAL;

	ret = FUNC4(func, MMC_PM_KEEP_POWER);
	if (ret) {
		FUNC1("set sdio keep pwr flag failed: %d\n", ret);
		return ret;
	}

	/* sdio irq wakes up host */
	ret = FUNC4(func, MMC_PM_WAKE_SDIO_IRQ);
	if (ret)
		FUNC1("set sdio wake irq flag failed: %d\n", ret);

	return ret;
}