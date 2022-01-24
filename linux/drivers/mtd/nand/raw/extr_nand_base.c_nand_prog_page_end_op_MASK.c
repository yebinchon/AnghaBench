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
typedef  int u8 ;
struct nand_sdr_timings {int /*<<< orphan*/  tPROG_max; int /*<<< orphan*/  tWB_max; } ;
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int (* waitfunc ) (struct nand_chip*) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NAND_CMD_PAGEPROG ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NAND_STATUS_FAIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nand_chip*,struct nand_operation*) ; 
 struct nand_sdr_timings* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct nand_chip*) ; 
 int FUNC8 (struct nand_chip*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct nand_chip*) ; 

int FUNC11(struct nand_chip *chip)
{
	int ret;
	u8 status;

	if (FUNC7(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC6(&chip->data_interface);
		struct nand_op_instr instrs[] = {
			FUNC1(NAND_CMD_PAGEPROG,
				    FUNC4(sdr->tWB_max)),
			FUNC2(FUNC3(sdr->tPROG_max), 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		ret = FUNC5(chip, &op);
		if (ret)
			return ret;

		ret = FUNC8(chip, &status);
		if (ret)
			return ret;
	} else {
		chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
		ret = chip->legacy.waitfunc(chip);
		if (ret < 0)
			return ret;

		status = ret;
	}

	if (status & NAND_STATUS_FAIL)
		return -EIO;

	return 0;
}