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
struct TYPE_2__ {int /*<<< orphan*/  (* read_byte ) (struct nand_chip*) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NAND_CMD_READID ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (unsigned int,void*,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nand_chip*,struct nand_operation*) ; 
 struct nand_sdr_timings* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*) ; 

int FUNC10(struct nand_chip *chip, u8 addr, void *buf,
		   unsigned int len)
{
	unsigned int i;
	u8 *id = buf;

	if (len && !buf)
		return -EINVAL;

	if (FUNC7(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC6(&chip->data_interface);
		struct nand_op_instr instrs[] = {
			FUNC3(NAND_CMD_READID, 0),
			FUNC2(1, &addr, FUNC4(sdr->tADL_min)),
			FUNC1(len, buf, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		/* Drop the DATA_IN instruction if len is set to 0. */
		if (!len)
			op.ninstrs--;

		return FUNC5(chip, &op);
	}

	chip->legacy.cmdfunc(chip, NAND_CMD_READID, addr, -1);

	for (i = 0; i < len; i++)
		id[i] = chip->legacy.read_byte(chip);

	return 0;
}