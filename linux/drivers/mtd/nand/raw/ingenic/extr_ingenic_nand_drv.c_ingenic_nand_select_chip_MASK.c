#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {int dummy; } ;
struct ingenic_nfc {size_t selected; int /*<<< orphan*/  dev; struct ingenic_nand_cs* cs; } ;
struct ingenic_nand_cs {int /*<<< orphan*/  bank; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct ingenic_nand {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 struct ingenic_nand* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ingenic_nfc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, int chipnr)
{
	struct ingenic_nand *nand = FUNC2(FUNC1(chip));
	struct ingenic_nfc *nfc = FUNC3(nand->chip.controller);
	struct ingenic_nand_cs *cs;

	/* Ensure the currently selected chip is deasserted. */
	if (chipnr == -1 && nfc->selected >= 0) {
		cs = &nfc->cs[nfc->selected];
		FUNC0(nfc->dev, cs->bank, false);
	}

	nfc->selected = chipnr;
}