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
struct sdio_func {int enable_timeout; int /*<<< orphan*/  card; } ;
struct ath6kl_sdio {TYPE_1__* id; struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  CCCR_SDIO_IRQ_MODE_REG ; 
 int /*<<< orphan*/  HIF_MBOX_BLOCK_SIZE ; 
 int MANUFACTURER_ID_AR6003_BASE ; 
 int MANUFACTURER_ID_ATH6KL_BASE_MASK ; 
 int /*<<< orphan*/  SDIO_IRQ_MODE_ASYNC_4BIT_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath6kl_sdio* FUNC3 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int FUNC6 (struct sdio_func*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC3(ar);
	struct sdio_func *func = ar_sdio->func;
	int ret;

	FUNC4(func);

	if ((ar_sdio->id->device & MANUFACTURER_ID_ATH6KL_BASE_MASK) >=
	    MANUFACTURER_ID_AR6003_BASE) {
		/* enable 4-bit ASYNC interrupt on AR6003 or later */
		ret = FUNC2(func->card,
						CCCR_SDIO_IRQ_MODE_REG,
						SDIO_IRQ_MODE_ASYNC_4BIT_IRQ);
		if (ret) {
			FUNC1("Failed to enable 4-bit async irq mode %d\n",
				   ret);
			goto out;
		}

		FUNC0(ATH6KL_DBG_BOOT, "4-bit async irq mode enabled\n");
	}

	/* give us some time to enable, in ms */
	func->enable_timeout = 100;

	ret = FUNC6(func, HIF_MBOX_BLOCK_SIZE);
	if (ret) {
		FUNC1("Set sdio block size %d failed: %d)\n",
			   HIF_MBOX_BLOCK_SIZE, ret);
		goto out;
	}

out:
	FUNC5(func);

	return ret;
}