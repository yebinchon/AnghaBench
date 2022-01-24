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
struct oxnas_nand_ctrl {scalar_t__ io_base; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 scalar_t__ OXNAS_NAND_CMD_ALE ; 
 scalar_t__ OXNAS_NAND_CMD_CLE ; 
 struct oxnas_nand_ctrl* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, int cmd,
				unsigned int ctrl)
{
	struct oxnas_nand_ctrl *oxnas = FUNC0(chip);

	if (ctrl & NAND_CLE)
		FUNC1(cmd, oxnas->io_base + OXNAS_NAND_CMD_CLE);
	else if (ctrl & NAND_ALE)
		FUNC1(cmd, oxnas->io_base + OXNAS_NAND_CMD_ALE);
}