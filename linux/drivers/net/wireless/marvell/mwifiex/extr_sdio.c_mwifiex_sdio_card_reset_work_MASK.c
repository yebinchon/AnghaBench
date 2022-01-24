#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdio_mmc_card {int /*<<< orphan*/  work_flags; struct sdio_func* func; } ;
struct sdio_func {int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_IFACE_WORK_CARD_RESET ; 
 int /*<<< orphan*/  MWIFIEX_IFACE_WORK_DEVICE_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC7(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;
	struct sdio_func *func = card->func;
	int ret;

	FUNC4(adapter);

	/* power cycle the adapter */
	FUNC5(func);
	FUNC2(func->card->host);
	FUNC6(func);

	/* Previous save_adapter won't be valid after this. We will cancel
	 * pending work requests.
	 */
	FUNC0(MWIFIEX_IFACE_WORK_DEVICE_DUMP, &card->work_flags);
	FUNC0(MWIFIEX_IFACE_WORK_CARD_RESET, &card->work_flags);

	ret = FUNC3(adapter);
	if (ret)
		FUNC1(&func->dev, "reinit failed: %d\n", ret);
}