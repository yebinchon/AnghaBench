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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBU_NAND_WAIT ; 
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 int NAND_WAIT_WR_C ; 
 int /*<<< orphan*/  NAND_WRITE_ADDR ; 
 int /*<<< orphan*/  NAND_WRITE_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip, int cmd, unsigned int ctrl)
{
	struct mtd_info *mtd = FUNC1(chip);

	if (cmd == NAND_CMD_NONE)
		return;

	if (ctrl & NAND_CLE)
		FUNC2(mtd, NAND_WRITE_CMD, cmd);
	else if (ctrl & NAND_ALE)
		FUNC2(mtd, NAND_WRITE_ADDR, cmd);

	while ((FUNC0(EBU_NAND_WAIT) & NAND_WAIT_WR_C) == 0)
		;
}