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
struct marvell_nfc {scalar_t__ regs; scalar_t__ use_dma; scalar_t__ dma_chan; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NDCR ; 
 int NDCR_DMA_EN ; 
 scalar_t__ NDSR ; 
 int /*<<< orphan*/  POLL_PERIOD ; 
 int /*<<< orphan*/  POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct marvell_nfc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, int flag,
			       const char *label)
{
	struct marvell_nfc *nfc = FUNC4(chip->controller);
	u32 val;
	int ret;

	ret = FUNC3(nfc->regs + NDSR, val,
					 val & flag,
					 POLL_PERIOD, POLL_TIMEOUT);

	if (ret) {
		FUNC0(nfc->dev, "Timeout on %s (NDSR: 0x%08x)\n",
			label, val);
		if (nfc->dma_chan)
			FUNC1(nfc->dma_chan);
		return ret;
	}

	/*
	 * DMA function uses this helper to poll on CMDD bits without wanting
	 * them to be cleared.
	 */
	if (nfc->use_dma && (FUNC2(nfc->regs + NDCR) & NDCR_DMA_EN))
		return 0;

	FUNC5(flag, nfc->regs + NDSR);

	return 0;
}