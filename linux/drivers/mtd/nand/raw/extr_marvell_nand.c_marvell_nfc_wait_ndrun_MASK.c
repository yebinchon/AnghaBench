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
typedef  int u32 ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct marvell_nfc {scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NDCR ; 
 int NDCR_ND_RUN ; 
 int /*<<< orphan*/  POLL_PERIOD ; 
 int /*<<< orphan*/  POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct marvell_nfc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip)
{
	struct marvell_nfc *nfc = FUNC3(chip->controller);
	u32 val;
	int ret;

	/*
	 * The command is being processed, wait for the ND_RUN bit to be
	 * cleared by the NFC. If not, we must clear it by hand.
	 */
	ret = FUNC2(nfc->regs + NDCR, val,
					 (val & NDCR_ND_RUN) == 0,
					 POLL_PERIOD, POLL_TIMEOUT);
	if (ret) {
		FUNC0(nfc->dev, "Timeout on NAND controller run mode\n");
		FUNC4(FUNC1(nfc->regs + NDCR) & ~NDCR_ND_RUN,
			       nfc->regs + NDCR);
		return ret;
	}

	return 0;
}