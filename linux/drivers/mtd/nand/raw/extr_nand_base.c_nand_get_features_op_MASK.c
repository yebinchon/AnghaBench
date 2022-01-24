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
struct nand_sdr_timings {int /*<<< orphan*/  tRR_min; int /*<<< orphan*/  tFEAT_max; int /*<<< orphan*/  tWB_max; } ;
struct nand_operation {int dummy; } ;
struct nand_op_instr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_byte ) (struct nand_chip*) ;int /*<<< orphan*/  (* cmdfunc ) (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct nand_chip {TYPE_1__ legacy; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_GET_FEATURES ; 
 struct nand_operation FUNC0 (int /*<<< orphan*/ ,struct nand_op_instr*) ; 
 struct nand_op_instr FUNC1 (int,void*,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_op_instr FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ONFI_SUBFEATURE_PARAM_LEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nand_chip*,struct nand_operation*) ; 
 struct nand_sdr_timings* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC12(struct nand_chip *chip, u8 feature,
				void *data)
{
	u8 *params = data;
	int i;

	if (FUNC9(chip)) {
		const struct nand_sdr_timings *sdr =
			FUNC8(&chip->data_interface);
		struct nand_op_instr instrs[] = {
			FUNC3(NAND_CMD_GET_FEATURES, 0),
			FUNC2(1, &feature, FUNC6(sdr->tWB_max)),
			FUNC4(FUNC5(sdr->tFEAT_max),
					 FUNC6(sdr->tRR_min)),
			FUNC1(ONFI_SUBFEATURE_PARAM_LEN,
					     data, 0),
		};
		struct nand_operation op = FUNC0(chip->cur_cs, instrs);

		return FUNC7(chip, &op);
	}

	chip->legacy.cmdfunc(chip, NAND_CMD_GET_FEATURES, feature, -1);
	for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
		params[i] = chip->legacy.read_byte(chip);

	return 0;
}