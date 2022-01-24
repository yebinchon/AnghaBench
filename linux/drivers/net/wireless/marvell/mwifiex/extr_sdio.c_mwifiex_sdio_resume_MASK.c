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
struct sdio_mmc_card {struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int /*<<< orphan*/  work_flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_STA ; 
 int /*<<< orphan*/  MWIFIEX_IS_SUSPENDED ; 
 int /*<<< orphan*/  MWIFIEX_SYNC_CMD ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct sdio_func* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 struct sdio_mmc_card* FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct sdio_func *func = FUNC2(dev);
	struct sdio_mmc_card *card;
	struct mwifiex_adapter *adapter;

	card = FUNC7(func);
	if (!card || !card->adapter) {
		FUNC1(dev, "resume: invalid card or adapter\n");
		return 0;
	}

	adapter = card->adapter;

	if (!FUNC8(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
		FUNC4(adapter, WARN,
			    "device already resumed\n");
		return 0;
	}

	FUNC0(MWIFIEX_IS_SUSPENDED, &adapter->work_flags);

	/* Disable Host Sleep */
	FUNC3(FUNC6(adapter, MWIFIEX_BSS_ROLE_STA),
			  MWIFIEX_SYNC_CMD);

	FUNC5(adapter);

	return 0;
}