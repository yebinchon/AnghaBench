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
struct platform_device {int dummy; } ;
struct marvell_nfc {int /*<<< orphan*/  core_clk; int /*<<< orphan*/  reg_clk; int /*<<< orphan*/  dma_chan; scalar_t__ use_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct marvell_nfc*) ; 
 struct marvell_nfc* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct marvell_nfc *nfc = FUNC4(pdev);

	FUNC3(nfc);

	if (nfc->use_dma) {
		FUNC2(nfc->dma_chan);
		FUNC1(nfc->dma_chan);
	}

	FUNC0(nfc->reg_clk);
	FUNC0(nfc->core_clk);

	return 0;
}