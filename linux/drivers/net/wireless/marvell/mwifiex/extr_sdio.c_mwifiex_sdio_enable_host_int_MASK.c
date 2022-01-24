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
struct sdio_mmc_card {TYPE_1__* reg; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_int_enable; int /*<<< orphan*/  host_int_mask_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  mwifiex_sdio_interrupt ; 
 int FUNC1 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int FUNC3 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC6(struct mwifiex_adapter *adapter)
{
	struct sdio_mmc_card *card = adapter->card;
	struct sdio_func *func = card->func;
	int ret;

	FUNC2(func);

	/* Request the SDIO IRQ */
	ret = FUNC3(func, mwifiex_sdio_interrupt);
	if (ret) {
		FUNC0(adapter, ERROR,
			    "claim irq failed: ret=%d\n", ret);
		goto out;
	}

	/* Simply write the mask to the register */
	ret = FUNC1(func, card->reg->host_int_mask_reg,
				       card->reg->host_int_enable);
	if (ret) {
		FUNC0(adapter, ERROR,
			    "enable host interrupt failed\n");
		FUNC5(func);
	}

out:
	FUNC4(func);
	return ret;
}