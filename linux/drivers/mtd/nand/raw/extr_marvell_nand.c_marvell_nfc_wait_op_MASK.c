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
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct marvell_nfc {int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned int IRQ_TIMEOUT ; 
 int /*<<< orphan*/  NDCR_RDYM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct marvell_nfc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct marvell_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct marvell_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 struct marvell_nfc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, unsigned int timeout_ms)
{
	struct marvell_nfc *nfc = FUNC7(chip->controller);
	u32 pending;
	int ret;

	/* Timeout is expressed in ms */
	if (!timeout_ms)
		timeout_ms = IRQ_TIMEOUT;

	FUNC2(&nfc->complete);

	FUNC5(nfc, NDCR_RDYM);
	ret = FUNC8(&nfc->complete,
					  FUNC6(timeout_ms));
	FUNC4(nfc, NDCR_RDYM);
	pending = FUNC3(nfc, FUNC0(0) | FUNC0(1));

	/*
	 * In case the interrupt was not served in the required time frame,
	 * check if the ISR was not served or if something went actually wrong.
	 */
	if (ret && !pending) {
		FUNC1(nfc->dev, "Timeout waiting for RB signal\n");
		return -ETIMEDOUT;
	}

	return 0;
}