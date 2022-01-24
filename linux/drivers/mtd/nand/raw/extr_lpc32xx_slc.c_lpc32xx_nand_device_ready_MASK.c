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
 int SLCSTAT_NAND_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lpc32xx_nand_host* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip)
{
	struct lpc32xx_nand_host *host = FUNC1(chip);
	int rdy = 0;

	if ((FUNC2(FUNC0(host->io_base)) & SLCSTAT_NAND_READY) != 0)
		rdy = 1;

	return rdy;
}