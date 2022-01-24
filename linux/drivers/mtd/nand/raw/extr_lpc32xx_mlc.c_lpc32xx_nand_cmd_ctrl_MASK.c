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
struct lpc32xx_nand_host {int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 struct lpc32xx_nand_host* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *nand_chip, int cmd,
				  unsigned int ctrl)
{
	struct lpc32xx_nand_host *host = FUNC2(nand_chip);

	if (cmd != NAND_CMD_NONE) {
		if (ctrl & NAND_CLE)
			FUNC3(cmd, FUNC1(host->io_base));
		else
			FUNC3(cmd, FUNC0(host->io_base));
	}
}