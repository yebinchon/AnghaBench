#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mode; scalar_t__ algo; TYPE_2__* calc_buf; TYPE_2__* code_buf; scalar_t__ priv; } ;
struct nand_chip {TYPE_2__* badblock_pattern; TYPE_1__ ecc; TYPE_2__* data_buf; TYPE_2__* bbt; } ;
struct nand_bch_control {int dummy; } ;
struct TYPE_4__ {int options; } ;

/* Variables and functions */
 int NAND_BBT_DYNAMICSTRUCT ; 
 scalar_t__ NAND_ECC_BCH ; 
 scalar_t__ NAND_ECC_SOFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_bch_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 

void FUNC5(struct nand_chip *chip)
{
	if (chip->ecc.mode == NAND_ECC_SOFT &&
	    chip->ecc.algo == NAND_ECC_BCH)
		FUNC1((struct nand_bch_control *)chip->ecc.priv);

	/* Free bad block table memory */
	FUNC0(chip->bbt);
	FUNC0(chip->data_buf);
	FUNC0(chip->ecc.code_buf);
	FUNC0(chip->ecc.calc_buf);

	/* Free bad block descriptor memory */
	if (chip->badblock_pattern && chip->badblock_pattern->options
			& NAND_BBT_DYNAMICSTRUCT)
		FUNC0(chip->badblock_pattern);

	/* Free manufacturer priv data. */
	FUNC3(chip);

	/* Free controller specific allocations after chip identification */
	FUNC2(chip);

	/* Free identification phase allocations */
	FUNC4(chip);
}