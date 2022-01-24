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
struct nand_chip {int dummy; } ;
struct ingenic_nfc {size_t selected; TYPE_2__* soc_info; int /*<<< orphan*/  dev; struct ingenic_nand_cs* cs; } ;
struct ingenic_nand_cs {scalar_t__ base; int /*<<< orphan*/  bank; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct ingenic_nand {TYPE_1__ chip; } ;
struct TYPE_4__ {scalar_t__ cmd_offset; scalar_t__ addr_offset; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_NCE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct ingenic_nand* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ingenic_nfc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *chip, int cmd,
				  unsigned int ctrl)
{
	struct ingenic_nand *nand = FUNC3(FUNC2(chip));
	struct ingenic_nfc *nfc = FUNC4(nand->chip.controller);
	struct ingenic_nand_cs *cs;

	if (FUNC0(nfc->selected < 0))
		return;

	cs = &nfc->cs[nfc->selected];

	FUNC1(nfc->dev, cs->bank, ctrl & NAND_NCE);

	if (cmd == NAND_CMD_NONE)
		return;

	if (ctrl & NAND_ALE)
		FUNC5(cmd, cs->base + nfc->soc_info->addr_offset);
	else if (ctrl & NAND_CLE)
		FUNC5(cmd, cs->base + nfc->soc_info->cmd_offset);
}