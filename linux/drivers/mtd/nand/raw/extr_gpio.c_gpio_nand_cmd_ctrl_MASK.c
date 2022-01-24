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
struct TYPE_3__ {int /*<<< orphan*/  IO_ADDR_W; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct gpiomtd {TYPE_2__ nand_chip; scalar_t__ ale; scalar_t__ cle; scalar_t__ nce; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (struct gpiomtd*) ; 
 struct gpiomtd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *chip, int cmd,
			       unsigned int ctrl)
{
	struct gpiomtd *gpiomtd = FUNC1(FUNC3(chip));

	FUNC0(gpiomtd);

	if (ctrl & NAND_CTRL_CHANGE) {
		if (gpiomtd->nce)
			FUNC2(gpiomtd->nce, !(ctrl & NAND_NCE));
		FUNC2(gpiomtd->cle, !!(ctrl & NAND_CLE));
		FUNC2(gpiomtd->ale, !!(ctrl & NAND_ALE));
		FUNC0(gpiomtd);
	}
	if (cmd == NAND_CMD_NONE)
		return;

	FUNC4(cmd, gpiomtd->nand_chip.legacy.IO_ADDR_W);
	FUNC0(gpiomtd);
}