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
struct lbs_private {int power_up_on_resume; scalar_t__ wol_criteria; scalar_t__ fw_ready; } ;
struct if_sdio_card {struct lbs_private* priv; } ;
struct device {int dummy; } ;
typedef  int mmc_pm_flag_t ;

/* Variables and functions */
 scalar_t__ EHS_REMOVE_WAKEUP ; 
 int ENOSYS ; 
 int MMC_PM_KEEP_POWER ; 
 int MMC_PM_WAKE_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct sdio_func* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct if_sdio_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 struct if_sdio_card* FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*) ; 
 int FUNC9 (struct sdio_func*,int) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct sdio_func *func = FUNC2(dev);
	struct if_sdio_card *card = FUNC7(func);
	struct lbs_private *priv = card->priv;
	int ret;

	mmc_pm_flag_t flags = FUNC8(func);
	priv->power_up_on_resume = false;

	/* If we're powered off anyway, just let the mmc layer remove the
	 * card. */
	if (!FUNC4(priv)) {
		if (priv->fw_ready) {
			priv->power_up_on_resume = true;
			FUNC3(card);
		}

		return 0;
	}

	FUNC1(dev, "%s: suspend: PM flags = 0x%x\n",
		 FUNC6(func), flags);

	/* If we aren't being asked to wake on anything, we should bail out
	 * and let the SD stack power down the card.
	 */
	if (priv->wol_criteria == EHS_REMOVE_WAKEUP) {
		FUNC1(dev, "Suspend without wake params -- powering down card\n");
		if (priv->fw_ready) {
			ret = FUNC5(priv);
			if (ret)
				return ret;

			priv->power_up_on_resume = true;
			FUNC3(card);
		}

		return 0;
	}

	if (!(flags & MMC_PM_KEEP_POWER)) {
		FUNC0(dev, "%s: cannot remain alive while host is suspended\n",
			FUNC6(func));
		return -ENOSYS;
	}

	ret = FUNC9(func, MMC_PM_KEEP_POWER);
	if (ret)
		return ret;

	ret = FUNC5(priv);
	if (ret)
		return ret;

	return FUNC9(func, MMC_PM_WAKE_SDIO_IRQ);
}