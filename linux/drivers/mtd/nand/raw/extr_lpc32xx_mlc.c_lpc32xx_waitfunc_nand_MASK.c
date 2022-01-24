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
struct nand_chip {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  dev; } ;
struct lpc32xx_nand_host {int /*<<< orphan*/  io_base; int /*<<< orphan*/  comp_nand; } ;

/* Variables and functions */
 int MLCISR_NAND_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NAND_STATUS_READY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct lpc32xx_nand_host* FUNC3 (struct nand_chip*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC4(chip);
	struct lpc32xx_nand_host *host = FUNC3(chip);

	if (FUNC5(FUNC0(host->io_base)) & MLCISR_NAND_READY)
		goto exit;

	FUNC6(&host->comp_nand);

	while (!(FUNC5(FUNC0(host->io_base)) & MLCISR_NAND_READY)) {
		/* Seems to be delayed sometimes by controller */
		FUNC2(&mtd->dev, "Warning: NAND not ready.\n");
		FUNC1();
	}

exit:
	return NAND_STATUS_READY;
}