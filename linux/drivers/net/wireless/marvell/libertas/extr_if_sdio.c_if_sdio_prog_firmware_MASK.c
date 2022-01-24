#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct if_sdio_card {scalar_t__ model; TYPE_1__* func; int /*<<< orphan*/  priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IF_SDIO_FIRMWARE_OK ; 
 int /*<<< orphan*/  IF_SDIO_H_INT_MASK ; 
 scalar_t__ MODEL_8686 ; 
 int /*<<< orphan*/  fw_table ; 
 int /*<<< orphan*/  if_sdio_do_prog_firmware ; 
 int /*<<< orphan*/  FUNC0 (struct if_sdio_card*) ; 
 int FUNC1 (struct if_sdio_card*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct if_sdio_card *card)
{
	int ret;
	u16 scratch;

	/*
	 * Disable interrupts
	 */
	FUNC4(card->func);
	FUNC6(card->func, 0x00, IF_SDIO_H_INT_MASK, &ret);
	FUNC5(card->func);

	FUNC4(card->func);
	scratch = FUNC1(card, &ret);
	FUNC5(card->func);

	FUNC2("firmware status = %#x\n", scratch);
	FUNC2("scratch ret = %d\n", ret);

	if (ret)
		goto out;


	/*
	 * The manual clearly describes that FEDC is the right code to use
	 * to detect firmware presence, but for SD8686 it is not that simple.
	 * Scratch is also used to store the RX packet length, so we lose
	 * the FEDC value early on. So we use a non-zero check in order
	 * to validate firmware presence.
	 * Additionally, the SD8686 in the Gumstix always has the high scratch
	 * bit set, even when the firmware is not loaded. So we have to
	 * exclude that from the test.
	 */
	if (scratch == IF_SDIO_FIRMWARE_OK) {
		FUNC2("firmware already loaded\n");
		FUNC0(card);
		return 0;
	} else if ((card->model == MODEL_8686) && (scratch & 0x7fff)) {
		FUNC2("firmware may be running\n");
		FUNC0(card);
		return 0;
	}

	ret = FUNC3(card->priv, &card->func->dev, card->model,
				     fw_table, if_sdio_do_prog_firmware);

out:
	return ret;
}