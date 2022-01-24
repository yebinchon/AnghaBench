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
typedef  int /*<<< orphan*/  u8 ;
struct nand_sdr_timings {int /*<<< orphan*/  tADL_min; } ;
struct nand_operation {int /*<<< orphan*/  ninstrs; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_byte ) (struct nand_chip*) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_STATUS ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,struct nand_operation*) ; 
 struct nand_sdr_timings* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 

int FUNC9(struct nand_chip *chip, u8 *status)
{
	if (FUNC6(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC5(&chip->data_interface);
		struct nand_op_instr instrs[] = {
			FUNC2(NAND_CMD_STATUS,
				    FUNC3(sdr->tADL_min)),
			FUNC1(1, status, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		if (!status)
			op.ninstrs--;

		return FUNC4(chip, &op);
	}

	chip->legacy.cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
	if (status)
		*status = chip->legacy.read_byte(chip);

	return 0;
}