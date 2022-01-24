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
struct nand_operation {int ninstrs; int /*<<< orphan*/ * instrs; int /*<<< orphan*/  cs; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
			  const struct nand_operation *op, bool check_only)
{
	int i, ret;

	if (check_only)
		return 0;

	FUNC2(chip, op->cs);

	/*
	 * Some commands contain NAND_OP_WAITRDY_INSTR.
	 * irq must be cleared here to catch the R/B# interrupt there.
	 */
	FUNC1(FUNC3(chip));

	for (i = 0; i < op->ninstrs; i++) {
		ret = FUNC0(chip, &op->instrs[i]);
		if (ret)
			return ret;
	}

	return 0;
}