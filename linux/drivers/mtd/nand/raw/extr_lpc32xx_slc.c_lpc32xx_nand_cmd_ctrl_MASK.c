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
typedef  int uint32_t ;
struct nand_chip {int dummy; } ;
struct lpc32xx_nand_host {int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_NCE ; 
 int SLCCFG_CE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lpc32xx_nand_host* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *chip, int cmd,
				  unsigned int ctrl)
{
	uint32_t tmp;
	struct lpc32xx_nand_host *host = FUNC3(chip);

	/* Does CE state need to be changed? */
	tmp = FUNC4(FUNC1(host->io_base));
	if (ctrl & NAND_NCE)
		tmp |= SLCCFG_CE_LOW;
	else
		tmp &= ~SLCCFG_CE_LOW;
	FUNC5(tmp, FUNC1(host->io_base));

	if (cmd != NAND_CMD_NONE) {
		if (ctrl & NAND_CLE)
			FUNC5(cmd, FUNC2(host->io_base));
		else
			FUNC5(cmd, FUNC0(host->io_base));
	}
}