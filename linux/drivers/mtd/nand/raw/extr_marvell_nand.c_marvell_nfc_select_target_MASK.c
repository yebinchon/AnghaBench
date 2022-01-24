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
struct marvell_nfc {struct nand_chip* selected_chip; scalar_t__ regs; } ;
struct marvell_nand_chip {int ndcr; unsigned int selected_die; int ndtr0; int ndtr1; } ;

/* Variables and functions */
 scalar_t__ NDCR ; 
 int /*<<< orphan*/  NDCR_ALL_INT ; 
 int NDCR_GENERIC_FIELDS_MASK ; 
 int NDCR_ND_RUN ; 
 scalar_t__ NDTR0 ; 
 scalar_t__ NDTR1 ; 
 int /*<<< orphan*/  FUNC0 (struct marvell_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct marvell_nand_chip* FUNC2 (struct nand_chip*) ; 
 struct marvell_nfc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *chip,
				      unsigned int die_nr)
{
	struct marvell_nand_chip *marvell_nand = FUNC2(chip);
	struct marvell_nfc *nfc = FUNC3(chip->controller);
	u32 ndcr_generic;

	/*
	 * Reset the NDCR register to a clean state for this particular chip,
	 * also clear ND_RUN bit.
	 */
	ndcr_generic = FUNC1(nfc->regs + NDCR) &
		       NDCR_GENERIC_FIELDS_MASK & ~NDCR_ND_RUN;
	FUNC4(ndcr_generic | marvell_nand->ndcr, nfc->regs + NDCR);

	/* Also reset the interrupt status register */
	FUNC0(nfc, NDCR_ALL_INT);

	if (chip == nfc->selected_chip && die_nr == marvell_nand->selected_die)
		return;

	FUNC4(marvell_nand->ndtr0, nfc->regs + NDTR0);
	FUNC4(marvell_nand->ndtr1, nfc->regs + NDTR1);

	nfc->selected_chip = chip;
	marvell_nand->selected_die = die_nr;
}