#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stm32_fmc2_nfc {size_t cs_sel; int /*<<< orphan*/ * addr_base; int /*<<< orphan*/ * cmd_base; } ;
struct nand_operation {unsigned int ninstrs; struct nand_op_instr* instrs; int /*<<< orphan*/  cs; } ;
struct TYPE_11__ {int /*<<< orphan*/  timeout_ms; } ;
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_10__ {int /*<<< orphan*/  force_8bit; int /*<<< orphan*/  len; TYPE_3__ buf; } ;
struct TYPE_8__ {unsigned int naddrs; int /*<<< orphan*/ * addrs; } ;
struct TYPE_7__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_6__ ctx; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
#define  NAND_OP_ADDR_INSTR 132 
#define  NAND_OP_CMD_INSTR 131 
#define  NAND_OP_DATA_IN_INSTR 130 
#define  NAND_OP_DATA_OUT_INSTR 129 
#define  NAND_OP_WAITRDY_INSTR 128 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_fmc2_nfc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip,
			      const struct nand_operation *op,
			      bool check_only)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC4(chip->controller);
	const struct nand_op_instr *instr = NULL;
	unsigned int op_id, i;
	int ret;

	ret = FUNC2(chip, op->cs);
	if (ret)
		return ret;

	if (check_only)
		return ret;

	for (op_id = 0; op_id < op->ninstrs; op_id++) {
		instr = &op->instrs[op_id];

		switch (instr->type) {
		case NAND_OP_CMD_INSTR:
			FUNC5(instr->ctx.cmd.opcode,
				       fmc2->cmd_base[fmc2->cs_sel]);
			break;

		case NAND_OP_ADDR_INSTR:
			for (i = 0; i < instr->ctx.addr.naddrs; i++)
				FUNC5(instr->ctx.addr.addrs[i],
					       fmc2->addr_base[fmc2->cs_sel]);
			break;

		case NAND_OP_DATA_IN_INSTR:
			FUNC1(chip, instr->ctx.data.buf.in,
					     instr->ctx.data.len,
					     instr->ctx.data.force_8bit);
			break;

		case NAND_OP_DATA_OUT_INSTR:
			FUNC3(chip, instr->ctx.data.buf.out,
					      instr->ctx.data.len,
					      instr->ctx.data.force_8bit);
			break;

		case NAND_OP_WAITRDY_INSTR:
			ret = FUNC0(chip,
						instr->ctx.waitrdy.timeout_ms);
			break;
		}
	}

	return ret;
}