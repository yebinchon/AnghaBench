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
struct sdio_mmc_card {struct mwifiex_adapter* adapter; int /*<<< orphan*/  fw_done; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int /*<<< orphan*/  work_flags; } ;
struct device {int dummy; } ;
typedef  int mmc_pm_flag_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOSYS ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int MMC_PM_KEEP_POWER ; 
 int /*<<< orphan*/  MWIFIEX_IS_HS_ENABLING ; 
 int /*<<< orphan*/  MWIFIEX_IS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct sdio_func* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 struct sdio_mmc_card* FUNC9 (struct sdio_func*) ; 
 int FUNC10 (struct sdio_func*) ; 
 int FUNC11 (struct sdio_func*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct sdio_func *func = FUNC2(dev);
	struct sdio_mmc_card *card;
	struct mwifiex_adapter *adapter;
	mmc_pm_flag_t pm_flag = 0;
	int ret = 0;

	pm_flag = FUNC10(func);
	FUNC7("cmd: %s: suspend: PM flag = 0x%x\n",
		 FUNC8(func), pm_flag);
	if (!(pm_flag & MMC_PM_KEEP_POWER)) {
		FUNC1(dev, "%s: cannot remain alive while host is"
			" suspended\n", FUNC8(func));
		return -ENOSYS;
	}

	card = FUNC9(func);
	if (!card) {
		FUNC1(dev, "suspend: invalid card\n");
		return 0;
	}

	/* Might still be loading firmware */
	FUNC13(&card->fw_done);

	adapter = card->adapter;
	if (!adapter) {
		FUNC1(dev, "adapter is not valid\n");
		return 0;
	}

	FUNC6(adapter);

	/* Enable the Host Sleep */
	if (!FUNC5(adapter)) {
		FUNC3(adapter, ERROR,
			    "cmd: failed to suspend\n");
		FUNC0(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);
		FUNC4(adapter);
		return -EFAULT;
	}

	FUNC3(adapter, INFO,
		    "cmd: suspend with MMC_PM_KEEP_POWER\n");
	ret = FUNC11(func, MMC_PM_KEEP_POWER);

	/* Indicate device suspended */
	FUNC12(MWIFIEX_IS_SUSPENDED, &adapter->work_flags);
	FUNC0(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);

	return ret;
}