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
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int /*<<< orphan*/  cur_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_READ0 ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,struct nand_operation*) ; 
 scalar_t__ FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 

int FUNC5(struct nand_chip *chip)
{
	if (FUNC3(chip)) {
		struct nand_op_instr instrs[] = {
			FUNC1(NAND_CMD_READ0, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		return FUNC2(chip, &op);
	}

	chip->legacy.cmdfunc(chip, NAND_CMD_READ0, -1, -1);

	return 0;
}