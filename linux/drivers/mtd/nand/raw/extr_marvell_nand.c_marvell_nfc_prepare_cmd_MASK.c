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
 int ETIMEDOUT ; 
 scalar_t__ NDCR ; 
 int NDCR_ND_RUN ; 
 scalar_t__ NDSR ; 
 int NDSR_WRCMDREQ ; 
 int /*<<< orphan*/  POLL_PERIOD ; 
 int /*<<< orphan*/  POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct nand_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct marvell_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip)
{
	struct marvell_nfc *nfc = FUNC5(chip->controller);
	u32 ndcr, val;
	int ret;

	/* Poll ND_RUN and clear NDSR before issuing any command */
	ret = FUNC1(chip);
	if (ret) {
		FUNC0(nfc->dev, "Last operation did not succeed\n");
		return ret;
	}

	ndcr = FUNC3(nfc->regs + NDCR);
	FUNC6(FUNC2(nfc->regs + NDSR), nfc->regs + NDSR);

	/* Assert ND_RUN bit and wait the NFC to be ready */
	FUNC6(ndcr | NDCR_ND_RUN, nfc->regs + NDCR);
	ret = FUNC4(nfc->regs + NDSR, val,
					 val & NDSR_WRCMDREQ,
					 POLL_PERIOD, POLL_TIMEOUT);
	if (ret) {
		FUNC0(nfc->dev, "Timeout on WRCMDRE\n");
		return -ETIMEDOUT;
	}

	/* Command may be written, clear WRCMDREQ status bit */
	FUNC6(NDSR_WRCMDREQ, nfc->regs + NDSR);

	return 0;
}