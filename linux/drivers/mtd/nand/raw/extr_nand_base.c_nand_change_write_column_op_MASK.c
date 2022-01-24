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
typedef  int /*<<< orphan*/  u8 ;
struct nand_sdr_timings {int /*<<< orphan*/  tCCS_min; } ;
struct nand_operation {int /*<<< orphan*/  ninstrs; } ;
struct TYPE_4__ {int force_8bit; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct nand_op_instr {TYPE_2__ ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* write_buf ) (struct nand_chip*,void const*,unsigned int) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,unsigned int,int) ;} ;
struct nand_chip {TYPE_3__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  NAND_CMD_RNDIN ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC3 (unsigned int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nand_chip*,struct nand_operation*) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ *,unsigned int) ; 
 struct nand_sdr_timings* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,void const*,unsigned int) ; 

int FUNC12(struct nand_chip *chip,
				unsigned int offset_in_page,
				const void *buf, unsigned int len,
				bool force_8bit)
{
	struct mtd_info *mtd = FUNC9(chip);

	if (len && !buf)
		return -EINVAL;

	if (offset_in_page + len > mtd->writesize + mtd->oobsize)
		return -EINVAL;

	/* Small page NANDs do not support column change. */
	if (mtd->writesize <= 512)
		return -ENOTSUPP;

	if (FUNC8(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC7(&chip->data_interface);
		u8 addrs[2];
		struct nand_op_instr instrs[] = {
			FUNC2(NAND_CMD_RNDIN, 0),
			FUNC1(2, addrs, FUNC4(sdr->tCCS_min)),
			FUNC3(len, buf, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);
		int ret;

		ret = FUNC6(chip, addrs, offset_in_page);
		if (ret < 0)
			return ret;

		instrs[2].ctx.data.force_8bit = force_8bit;

		/* Drop the DATA_OUT instruction if len is set to 0. */
		if (!len)
			op.ninstrs--;

		return FUNC5(chip, &op);
	}

	chip->legacy.cmdfunc(chip, NAND_CMD_RNDIN, offset_in_page, -1);
	if (len)
		chip->legacy.write_buf(chip, buf, len);

	return 0;
}