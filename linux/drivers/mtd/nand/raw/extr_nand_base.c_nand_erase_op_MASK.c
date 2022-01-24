#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct nand_sdr_timings {int /*<<< orphan*/  tBERS_max; int /*<<< orphan*/  tWB_max; } ;
struct nand_operation {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  naddrs; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct TYPE_6__ {int (* waitfunc ) (struct nand_chip*) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int,int) ;} ;
struct nand_chip {unsigned int phys_erase_shift; unsigned int page_shift; int options; TYPE_3__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NAND_CMD_ERASE1 ; 
 int /*<<< orphan*/  NAND_CMD_ERASE2 ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int,unsigned int*,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NAND_ROW_ADDR_3 ; 
 unsigned int NAND_STATUS_FAIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nand_chip*,struct nand_operation*) ; 
 struct nand_sdr_timings* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct nand_chip*) ; 
 int FUNC8 (struct nand_chip*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (struct nand_chip*) ; 

int FUNC12(struct nand_chip *chip, unsigned int eraseblock)
{
	unsigned int page = eraseblock <<
			    (chip->phys_erase_shift - chip->page_shift);
	int ret;
	u8 status;

	if (FUNC7(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC6(&chip->data_interface);
		u8 addrs[3] = {	page, page >> 8, page >> 16 };
		struct nand_op_instr instrs[] = {
			FUNC2(NAND_CMD_ERASE1, 0),
			FUNC1(2, addrs, 0),
			FUNC2(NAND_CMD_ERASE2,
				    FUNC4(sdr->tWB_max)),
			FUNC3(FUNC4(sdr->tBERS_max), 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		if (chip->options & NAND_ROW_ADDR_3)
			instrs[1].ctx.addr.naddrs++;

		ret = FUNC5(chip, &op);
		if (ret)
			return ret;

		ret = FUNC8(chip, &status);
		if (ret)
			return ret;
	} else {
		chip->legacy.cmdfunc(chip, NAND_CMD_ERASE1, -1, page);
		chip->legacy.cmdfunc(chip, NAND_CMD_ERASE2, -1, -1);

		ret = chip->legacy.waitfunc(chip);
		if (ret < 0)
			return ret;

		status = ret;
	}

	if (status & NAND_STATUS_FAIL)
		return -EIO;

	return 0;
}